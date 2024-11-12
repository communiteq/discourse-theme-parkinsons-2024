
import Component from '@glimmer/component';
import { inject as service } from "@ember/service";

export default class ParkinsonsHero extends Component {
  @service router;

  get mustShow() {
    var prefixes = ["discovery.categories"];
    if (prefixes.some(prefix => this.router.currentRouteName.startsWith(prefix))) {
        return true;
    }
    return false;
}

  <template>
    {{#if this.mustShow}}
    <div class="parkinsons-hero">
      <div class="image">
        <img src="https://forum.parkinsons.org.uk/uploads/db7928/original/2X/6/61bc9c5aa8cfc3fcaa8d95de4aa99d12dd616ed6.jpeg"/>
      </div>
      <div class="copy">
        <h1>Parkinson’s UK forum</h1>
        <p>
          Welcome to the Parkinson’s UK forum! If you're new to the forum, take a few minutes to discover the support our online
          community can offer for people living with or affected by Parkinson's. Our online forum is a space for you to chat to
          people who know what you're going through. Whether you have been newly diagnosed with Parkinson’s, are a carer or have
          been living with the condition for longer, the forum is a place for you chat about the things that are important to you…
          and sometimes share a virtual cup of tea. We hope you enjoy using the forum.
        </p>
        <a class="btn btn-default" href="/faq">Forum Rules</a>
        <a class="btn btn-default" href="/about">About the Forum</a>
      </div>
    </div>
    {{/if}}
  </template>
}