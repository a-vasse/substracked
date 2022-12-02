import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="notifications"
export default class extends Controller {
  static targets = ["resource", "plans", "form", "custom", "add", "toast"];

  connect() {
    // console.log("Notifications connected")
    if (this.hasToastTarget) {
      this.toastTarget.addEventListener("hide.bs.toast", () => {
        this.markAsRead();
      })

    setTimeout(() => {
        this.toastTarget.classList.add("show");
        console.log('timeout worked')
      }, 2000);
    }
  }

  markAsRead() {
    const url = `/api/v1/notifications/${this.toastTarget.dataset.notificationId}`;
    const data = {
      notification: {
        read: true,
      },
    };

    fetch(url, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    });
  }
  fetchForm() {
    console.log(this.resourceTarget.value);
    this.resourceTarget.value = "Apple TV";
    this.display();
  }

  display() {
    this.toastTarget.classList.remove("show");
    this.markAsRead();

    const resource = this.resourceTarget.value;
    if (resource != "") {
      fetch("/api/v1/resources")
        .then((response) => response.json())
        .then((dataResources) => {
          let targetResourceID = dataResources.find(
            (dataResource) => dataResource.name === resource
          ).id;
          fetch("/api/v1/plans")
            .then((response) => response.json())
            .then((dataPlans) => {
              this.plansTarget.innerHTML = "";
              let targetPlans = dataPlans.filter(
                (dataPlan) => dataPlan.resource_id === targetResourceID
              );
              let selectOptions = `<div class="mb-3 select required subscription_plan">
                <label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label>
                <select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">`;
              if (targetPlans[0].name === "") {
                selectOptions += `<option value="${targetPlans[0].id}">N/A</option>`;
              } else {
                targetPlans.forEach((plan) => {
                  selectOptions += `<option value="${plan.id}">${plan.name} - ¥ ${plan.price}</option>`;
                });
              }
              selectOptions += "</div>";
              this.plansTarget.insertAdjacentHTML("afterbegin", selectOptions);
              this.formTarget.classList.remove("d-none");
              this.addTarget.classList.remove("d-none");
              this.customTarget.classList.add("d-none");
            });
        });
    } else {
      this.formTarget.classList.add("d-none");
      this.addTarget.classList.add("d-none");
      this.customTarget.classList.remove("d-none");
    }
  }
}
