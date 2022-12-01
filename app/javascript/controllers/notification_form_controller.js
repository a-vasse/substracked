import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="notification-form"
export default class extends Controller {
  static targets = ["resource", "plans", "form", "custom", "add"];

  connect() {
    console.log("Hello world!");
  }
  fetchForm() {
    console.log(this.resourceTarget.value);
    this.resourceTarget.value = "Amazon Prime";
    this.display();
  }

  display() {
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
              let selectOptions = `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">`;
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
