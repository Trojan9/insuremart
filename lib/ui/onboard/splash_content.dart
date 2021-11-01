

class OnboardingContent {
  String title1, title2, description1, description2, image;
  double letterSpacing;

  OnboardingContent({
    this.title1,
    this.title2,
    this.image,
    this.description1,
    this.description2,
    this.letterSpacing,

  });
}

List<OnboardingContent> body = [

  OnboardingContent(
    image: 'images/image1.png',
    title1: 'Easy and Personalized \nInsurance',
    description1: 'We offer easy, flexible and tailored-to-fit insurance products',

  ),
  OnboardingContent(
    image: 'images/image2.png',
    title1: 'True Customer\nCentricity',
    description1: 'We are passionate about providing our customers with a unique and enriched insurance experience',

  ),
  OnboardingContent(
    image: 'images/image3.png',
    title1: 'Faster Claims\n processing and payment',
    description1: 'With real-time processing and updating technology, your claims are guaranteed to be settled within 24 hours',

  ),

];
