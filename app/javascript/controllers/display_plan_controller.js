import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-plan"
export default class extends Controller {
  static targets = ["resource", "plans", "form"]
  connect() {
    console.log("connected")
    console.log(this.formTarget)
    console.log(this.plansTarget)
  }

  display() {
    const resource = this.resourceTarget.value
    console.log(this.resourceTarget.value)
    this.plansTarget.innerHTML = "";
    let options;
    switch (resource) {
      case "Netflix":
        options = this.netflix();
        break;
      case "Amazon Prime":
        options = this.amazonPrime();
        break;
      case "Apple TV":
        options = this.appleTV();
        break;
      case "Disney +":
        options = this.disney();
        break;
      case "Masterclass":
        options = this.masterClass();
        break;
      case "Hulu":
        options = this.hulu();
        break;
      case "Xbox Game Pass":
        options = this.xbox();
        break;
      case "Playstation Plus":
        options = this.playstation();
        break;
      case "Nintendo Online":
        options = this.nintendo();
        break;
      case "Github":
        options = this.github();
        break;
      case "Nikkei":
        options = this.nikkei();
        break;
      case "The New York Times":
        options = this.nyt();
        break;
      case "Youtube Premium":
        options = this.youtube();
        break;
      case "Radish Boya":
        options = this.radish();
        break;
      case "Nosh":
        options = this.nosh();
        break;
      case "HelloFresh":
        options = this.helloFresh();
        break;
    }
    if (options) {
      this.plansTarget.insertAdjacentHTML("afterbegin", options)
      this.formTarget.classList.remove("d-none")
    } else {
      this.formTarget.classList.add("d-none")
    }
  }

  netflix() {
    return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
    <option value="1">Basic with ads</option>
<option value="2">Basic</option>
<option value="3">Standard</option>
<option value="4">Premium</option>`
  }


amazonPrime() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="5">Monthly</option>
  <option value="6">Annual</option>`
}

appleTV() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="7">N/A</option>`
}

disney() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="8">monthly</option>
  <option value="9">annual</option>`
}

masterClass() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="10">individual</option>
  <option value="11">Duo</option>
  <option value="12">Family</option>`
}

hulu() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="13">N/A</option>`
}

xbox() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="14">PC/Console</option>
  <option value="15">Ultimate</option>`
}

playstation() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="16">Essential</option>
  <option value="17">Extra</option>
  <option value="18">Premium</option>`
}

nintendo() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="19">individual</option>
  <option value="20">individual plus</option>
  <option value="21">family</option>
  <option value="22">family plus</option>`
}

github() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="23">Premium</option>`
}

nikkei() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="24">Paper</option>
  <option value="25">Electronic</option>`
}

nyt() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="26">Year-name</option>`
}

youtube() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="27">individual</option>
  <option value="28">individual annual</option>
  <option value="29">family</option>
  <option value="30">student</option>`
}

radish() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="31">S</option>
  <option value="32">M</option>`
}

nosh() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="33">6 meal</option>`
}

helloFresh() {
  return `<div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id">
  <option value="34">2 people 3 recipes</option>
  <option value="35">2 people 4 recipes</option>
  <option value="36">4 people 3 recipes</option>`
}

}

// <div class="mb-3 select required subscription_plan"><label class="form-label select required" for="subscription_plan_id">Plan <abbr title="required">*</abbr></label><select class="form-select select required" name="subscription[plan_id]" id="subscription_plan_id"><option value="" label=" "></option>
// <option value="1">Basic with ads</option>
// <option value="2">Basic</option>
// <option value="3">Standard</option>
// <option value="4">Premium</option>
// <option value="5">Monthly</option>
// <option value="6">Annual</option>
// <option value="7"></option>
// <option value="8">monthly</option>
// <option value="9">annual</option>
// <option value="10">individual</option>
// <option value="11">Duo</option>
// <option value="12">Family</option>
// <option value="13"></option>
// <option value="14">PC/Console</option>
// <option value="15">Ultimate</option>
// <option value="16">Essential</option>
// <option value="17">Extra</option>
// <option value="18">Premium</option>
// <option value="19">individual</option>
// <option value="20">individual plus</option>
// <option value="21">family</option>
// <option value="22">family plus</option>
// <option value="23">Premium</option>
// <option value="24">paper</option>
// <option value="25">Electronic</option>
// <option value="26">Year-name</option>
// <option value="27">individual</option>
// <option value="28">individual annual</option>
// <option value="29">family</option>
// <option value="30">student</option>
// <option value="31">S</option>
// <option value="32">M</option>
// <option value="33">6 meal</option>
// <option value="34">2 people 3 recipes</option>
// <option value="35">2 people 4 recipes</option>
// <option value="36">4 people 3 recipes</option></select></div>
