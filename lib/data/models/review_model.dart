// Review Model
class ReviewItem {
  final String image;
  final String title;
  final List<String> description;
  final String rating;
  final String brandName;
  final int reviewCount;
  final List<String> tags;

  ReviewItem({
    required this.image,
    required this.title,
    required this.brandName,
    required this.description,
    required this.rating,
    required this.reviewCount,
    required this.tags,
  });
}

final List<ReviewItem> reviews = [
  ReviewItem(
    image: 'assets/home/tv_set.png',
    brandName: 'LG',
    title: '전자 스탠바이미 27ART10AKPL',
    description: ['화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.', '스탠바이미는 사랑입니다!️'],
    rating: '4.89',
    reviewCount: 216,
    tags: ['LG전자', '편리성'],
  ),
  ReviewItem(
    image: 'assets/home/led_tv_set.png',
    brandName: 'LG',
    title: '전자 울트라HD 75UP8300KNA',
    description: ['화면 잘 나오고... 리모컨 기능 좋습니다.','넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!'],
    rating: '4.36',
    reviewCount: 136,
    tags: ['LG전자', '고화질'],
  ),
  ReviewItem(
    image: 'assets/home/smart_tv.png',
    brandName: '라이픽',
    title: '스마트 DS4001L NETRANGE',
    description: ['반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다', '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고'],
    rating: '3.98',
    reviewCount: 98,
    tags: ['라이픽', '가성비'],
  ),
];