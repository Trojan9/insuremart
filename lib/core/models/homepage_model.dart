

class HomePageModel {
  final String image, title,  contents;
  final bool status;

  HomePageModel({
    this.title,
    this.image,
    this.contents,
    this.status = true,
  });
}

List<HomePageModel> homepageModel = [
  HomePageModel(
    image: 'images/jeep_insure.png',
    title: 'Motor Insurance',
    contents: 'Buy or renew and customize your motor insurance policy from any of your preferred insurance providers which covers loss or accidental damage to your vehicle and/or a third party',
    status: true,
  ),
    HomePageModel(
    image: 'images/fire_insure.png',
    title: 'Fire Insurance',
    contents: 'Buy or renew your fire insurance policy which covers loss or damage to your property as a result of fire',
    status: false,
  ),

  HomePageModel(
    image: 'images/life_insure.png',
    title: 'Life Assurance Policies',
    contents: 'Buy, renew, or follow up on your life assurance policies from any of your preferred insurance providers',
    status: false,
  ),

  HomePageModel(
    image: 'images/ship_insure.png',
    title: 'Marine Cargo Insurance',
    contents: 'Buy a marine cargo insurance which provides cover for cargo being imported or exported via maritime transport',
    status: false,
  ),

  HomePageModel(
    image: 'images/home_insure.png',
    title: 'Householder Insurance',
    contents: 'Buy or renew your householder’s policy which covers loss or damages to a residence, along with furniture, fixtures and fittings and other assets',
    status: false,
  ),
  HomePageModel(
    image: 'images/insure_burglar.png',
    title: 'Burglary Insurance',
    contents: 'Buy or renew your burglary insurance policy which provides cover for loss or damage as a result of burglary/housebreaking or attempt thereof',
    status: false,
  ),
  HomePageModel(
    image: 'images/insure_tablet.png',
    title: 'Gadget Insurance',
    contents: 'Buy or renew your gadget insurance policies that provides compensation for loss or damage to your gadgets ,i.e smart phone or watch, tablets, laptops, etc.',
    status: false,
  ),

  HomePageModel(
    image: 'images/insure_global.png',
    title: 'Travel Insurance',
    contents: 'Buy a travel insurance policy for anywhere around the world, from any of your preferred insurance provider',
    status: false,
  ),

  HomePageModel(
    image: 'images/insure_accident.png',
    title: 'Personal Accident Insurance',
    contents: 'Buy or renew your personal accident insurance which provides financial compensation should you be involved in any accident',
    status: false,
  ),

  HomePageModel(
    image: 'images/insure_cardiogram.png',
    title: 'Health Insurance',
    contents: 'Buy and renew and customize your health insurance policies from any of your preferred health insurance providers',
    status: false,
  ),



];