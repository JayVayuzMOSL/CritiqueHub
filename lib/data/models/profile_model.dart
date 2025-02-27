class Profile {
  final String profileImage;
  final String name;
  final String description;
  final List<Review> reviews;

  Profile({
    required this.profileImage,
    required this.name,
    required this.description,
    required this.reviews,
  });
}

class Review {
  final String productName;
  final String productDescription;
  final double starRating; // Out of 5
  final String ratingDescription;
  final String productImage;
  final String dateOfReview;
  final List<String> reviewImages;

  Review({
    required this.dateOfReview,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.starRating,
    required this.ratingDescription,
    required this.reviewImages,
  });
}

List<Profile> userProfileList = [
  Profile(
    profileImage: 'assets/profile/reviewer1.png',
    name: "이름 1",
    description: "기술 애호가 | 리뷰어",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer2.png',
    name: "이름 2",
    description: "기술 애호가 | 리뷰어",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer3.png',
    name: "이름 3",
    description: "테크 블로거 | 리뷰 전문가",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer4.png',
    name: "이름 4",
    description: "하드웨어 전문가 | 리뷰어",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer5.png',
    name: "이름 5",
    description: "모바일 마니아 | 리뷰어",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer6.png',
    name: "이름 6",
    description: "가젯 애호가 | 리뷰 크리에이터",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer7.png',
    name: "이름 7",
    description: "게임 전문가 | 리뷰 크리에이터",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer8.png',
    name: "이름 8",
    description: "카메라 전문가 | 리뷰어",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
  Profile(
    profileImage: 'assets/profile/reviewer9.png',
    name: "이름 9",
    description: "오디오 애호가 | 리뷰 전문가",
    reviews: [
      Review(
        productName: "HP 프로북 450 G8",
        productImage: 'https://e7.pngegg.com/pngimages/250/420/png-clipart-laptop-hewlett-packard-hp-elitebook-hp-probook-640-g2-laptop-gadget-electronics-thumbnail.png', // HP ProBook image
        productDescription: "인텔 코어 i5 및 16GB RAM을 탑재한 강력한 노트북.",
        starRating: 4.5,
        ratingDescription: "뛰어난 성능, 좋은 배터리 수명, 세련된 디자인. 업무용으로 완벽합니다.",
        reviewImages: [
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 1
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 2
          'https://e7.pngegg.com/pngimages/17/914/png-clipart-hewlett-packard-laptop-hp-probook-650-g2-hp-probook-640-g2-hewlett-packard-netbook-computer.png', // HP ProBook image 3
        ],
        dateOfReview: '2022.12.09'
      ),
      Review(
        productName: "삼성 갤럭시 S23",
        productImage: 'https://images.fonearena.com/blog/wp-content/uploads/2023/09/Galaxy-S23-FE-Google-Play-Listing.png', // Samsung Galaxy S23 image
        productDescription: "스냅드래곤 8 Gen 2가 장착된 플래그십 스마트폰.",
        starRating: 4.8,
        ratingDescription: "우수한 카메라, 부드러운 성능, 프리미엄 디자인. 야간 모드 사진이 특히 인상적입니다.",
        reviewImages: [
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 1
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 2
          'https://www.themobileindian.com/wp-content/uploads/2023/06/Galaxy-s23-FE-white-render.jpg', // Samsung Galaxy S23 image 3
        ],
        dateOfReview: '2022.12.09'
      ),
    ],
  ),
];