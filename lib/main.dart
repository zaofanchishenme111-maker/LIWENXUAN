import 'package:flutter/material.dart';

void main() {
  runApp(const SuqianApp());
}

class SuqianApp extends StatelessWidget {
  const SuqianApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '宿迁旅游指南',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'NotoSansSC',
      ),
      home: const SuqianCityPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// 核心数据模型定义
class Highlight {
  final String nameZh;
  final String nameKo;

  const Highlight(this.nameZh, this.nameKo);
}

class Attraction {
  final String nameZh;
  final String nameKo;
  final String descZh;
  final String descKo;
  final List<String> tags;
  final String famous;
  final String imgIcon;
  final Color imgColor;

  const Attraction({
    required this.nameZh,
    required this.nameKo,
    required this.descZh,
    required this.descKo,
    required this.tags,
    required this.famous,
    required this.imgIcon,
    required this.imgColor,
  });
}

class Food {
  final String nameZh;
  final String nameKo;
  final String descZh;
  final String descKo;
  final String features;
  final String imgIcon;
  final Color imgColor;

  const Food({
    required this.nameZh,
    required this.nameKo,
    required this.descZh,
    required this.descKo,
    required this.features,
    required this.imgIcon,
    required this.imgColor,
  });
}

class Route {
  final String nameZh;
  final String nameKo;
  final String duration;
  final List<String> stops;

  const Route({
    required this.nameZh,
    required this.nameKo,
    required this.duration,
    required this.stops,
  });
}

class CityData {
  final String key;
  final String nameZh;
  final String nameKo;
  final String taglineZh;
  final String taglineKo;
  final String icon;
  final Color headerColor;
  final Color accentColor;
  final String descZh;
  final String descKo;
  final List<Highlight> highlights;
  final List<Attraction> attractions;
  final List<Food> foods;
  final List<Route> routes;

  const CityData({
    required this.key,
    required this.nameZh,
    required this.nameKo,
    required this.taglineZh,
    required this.taglineKo,
    required this.icon,
    required this.headerColor,
    required this.accentColor,
    required this.descZh,
    required this.descKo,
    required this.highlights,
    required this.attractions,
    required this.foods,
    required this.routes,
  });
}

// 宿迁城市页面
class SuqianCityPage extends StatefulWidget {
  const SuqianCityPage({super.key});

  @override
  State<SuqianCityPage> createState() => _SuqianCityPageState();
}

class _SuqianCityPageState extends State<SuqianCityPage> {
  // 初始化宿迁城市数据
  final CityData suqianData = CityData(
    key: 'suqian',
    nameZh: '宿迁',
    nameKo: '쑤첸',
    taglineZh: '项羽故里 · 中国酒都',
    taglineKo: '항우의 고향 · 중국 술의 수도',
    icon: '🏛️',
    headerColor: const Color(0xFF4A148C),
    accentColor: const Color(0xFFB39DDB),
    descZh: '宿迁市位于江苏省北部，是西楚霸王项羽的故乡，素有「华夏文明之脉」的美誉。总面积8555平方公里，常住人口约500万。',
    descKo: '쑤첸시는 장쑤성 북부, 서초패왕 항우의 고향입니다. 총면적 8,555km², 상주인구 약 500만 명.',
    highlights: [
      const Highlight('项羽故里', '항우의 고향'),
      const Highlight('中国酒都（洋河/双沟）', '중국 술의 수도'),
      const Highlight('骆马湖湿地生态', '뤄마호 습지 생태'),
      const Highlight('全国文明城市', '전국 문명 도시'),
    ],
    attractions: [
      const Attraction(
        nameZh: '项王故里',
        nameKo: '항왕 고리',
        descZh: '西楚霸王项羽出生地，有项羽手植槐、霸王鼎等历史遗迹。',
        descKo: '서초패왕 항우 출생지. 항우가 심은 회화나무, 패왕정 등 역사 유적.',
        tags: ['4A景区', '历史文化', '项羽故里'],
        famous: '手植槐·霸王鼎·英风阁',
        imgIcon: '⚔️',
        imgColor: Color(0xFF6A1B9A),
      ),
      const Attraction(
        nameZh: '三台山国家森林公园',
        nameKo: '싼타이산 국가삼림공원',
        descZh: '万亩花海、森林氧吧。春季梨花二月兰盛开，秋季粉黛乱子草成为网红。',
        descKo: '만무 꽃밭과 산림 산소방. 봄 배꽃·제비꽃, 가을 핑크뮬리가 인기.',
        tags: ['4A景区', '自然风光', '花海'],
        famous: '衲田花海·镜湖·天和塔',
        imgIcon: '🌸',
        imgColor: Color(0xFFE91E63),
      ),
      const Attraction(
        nameZh: '骆马湖旅游度假区',
        nameKo: '뤄마호 관광 휴양구',
        descZh: '江苏四大淡水湖之一，体验摩托艇、沙滩排球等水上项目。',
        descKo: '장쑤 4대 담수호. 모터보트·비치발리볼 등 수상 스포츠 가능.',
        tags: ['省级度假区', '水上运动', '亲子'],
        famous: '沙滩公园·湖滨公园·罗曼园',
        imgIcon: '🏖️',
        imgColor: Color(0xFF0288D1),
      ),
      const Attraction(
        nameZh: '洋河酒厂文化旅游区',
        nameKo: '양허 주류 공장 문화 관광구',
        descZh: '中国白酒之都核心区。参观百年地下酒窖，品尝洋河大曲。',
        descKo: '백주 수도 핵심. 백년 지하 주고 관람, 양허 대곡 시음.',
        tags: ['4A景区', '工业旅游', '酒文化'],
        famous: '地下酒窖·美人泉·酿酒车间',
        imgIcon: '🍶',
        imgColor: Color(0xFFBF360C),
      ),
      const Attraction(
        nameZh: '洪泽湖湿地公园',
        nameKo: '훙쩌후 습지 공원',
        descZh: '国家级湿地自然保护区，候鸟天堂。乘船穿行芦苇荡。',
        descKo: '국가급 습지 보호구, 철새 천국. 배 타고 갈대밭 통과.',
        tags: ['国家级保护区', '湿地生态', '观鸟'],
        famous: '芦苇迷宫·水杉林·观鸟台',
        imgIcon: '🦆',
        imgColor: Color(0xFF33691E),
      ),
    ],
    foods: [
      const Food(
        nameZh: '宿迁擀面皮',
        nameKo: '쑤첸 간몐피',
        descZh: '手工擀制凉皮筋道爽滑，配秘制辣椒油和醋，酸辣开胃。',
        descKo: '손으로 만든 량피, 쫄깃하고 부드러움. 비법 고추기름+식초로 새콤매콤.',
        features: '地方名吃 · 非遗美食',
        imgIcon: '🍝',
        imgColor: Color(0xFFE65100),
      ),
      const Food(
        nameZh: '洋河大曲',
        nameKo: '양허 대곡',
        descZh: '中国八大名酒之一，始于隋唐。「甜绵软净香」风格闻名天下。',
        descKo: '중국 8대 명주, 수당 시대 시작. \'달콤하고 부드럽고 깨끗하고 향기로운\' 풍미.',
        features: '中国名酒 · 中华老字号',
        imgIcon: '🥃',
        imgColor: Color(0xFF1A237E),
      ),
      const Food(
        nameZh: '骆马湖银鱼',
        nameKo: '뤄마호 은어',
        descZh: '通体透明的特产银鱼，肉质鲜嫩，做银鱼炒蛋或银鱼羹俱佳。',
        descKo: '투명한 특산 은어, 부드러운 육질. 은어 계란볶음·수프로 조리.',
        features: '地方特产 · 淡水珍品',
        imgIcon: '🐟',
        imgColor: Color(0xFF0277BD),
      ),
      const Food(
        nameZh: '泗洪大闸蟹',
        nameKo: '쓰훙 대게',
        descZh: '洪泽湖优质水域养殖，蟹黄饱满、肉质鲜美。',
        descKo: '훙쩌후 우수 수질 양식. 크림 가득, 육질 선미.',
        features: '地理标志产品 · 秋季时令',
        imgIcon: '🦀',
        imgColor: Color(0xFFD84315),
      ),
      const Food(
        nameZh: '乾隆贡酥',
        nameKo: '건륭 공소',
        descZh: '传统糕点，乾隆下江南品尝后赞不绝口。外酥内软甜而不腻。',
        descKo: '전통 과자, 건륭제 강남 순행 시 극찬. 바삭하고 달콤.',
        features: '百年传承 · 宫廷贡品',
        imgIcon: '🥮',
        imgColor: Color(0xFFF9A825),
      ),
    ],
    routes: [
      const Route(
        nameZh: '一日文化体验游',
        nameKo: '1일 문화 체험',
        duration: '1天',
        stops: ['上午：项王故里', '中午：擀面皮+银鱼', '下午：洋河酒厂', '傍晚：骆马湖落日'],
      ),
      const Route(
        nameZh: '两日生态休闲游',
        nameKo: '2일 생태 레저',
        duration: '2天',
        stops: ['Day1：三台山花海 → 镜湖', 'Day2：洪泽湖湿地 → 大闸蟹宴 → 返程'],
      ),
      const Route(
        nameZh: '三日深度全景游',
        nameKo: '3일 심층 전경',
        duration: '3天',
        stops: ['Day1：项王故里 → 洋河酒厂', 'Day2：三台山 → 骆马湖', 'Day3：洪泽湖 → 大闸蟹 → 返程'],
      ),
    ],
  );

  // 切换语言的状态
  bool isChinese = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 顶部头部
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: suqianData.headerColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                isChinese ? suqianData.nameZh : suqianData.nameKo,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Container(
                color: suqianData.headerColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      suqianData.icon,
                      style: const TextStyle(fontSize: 48),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      isChinese ? suqianData.taglineZh : suqianData.taglineKo,
                      style: const TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(isChinese ? Icons.language : Icons.g_translate),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    isChinese = !isChinese;
                  });
                },
              ),
            ],
          ),

          // 城市简介
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isChinese ? '城市简介' : '도시 소개',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: suqianData.headerColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isChinese ? suqianData.descZh : suqianData.descKo,
                    style: const TextStyle(fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),
          ),

          // 城市亮点
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isChinese ? '城市亮点' : '도시 하이라이트',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: suqianData.headerColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: suqianData.highlights.map((highlight) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: suqianData.accentColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            isChinese ? highlight.nameZh : highlight.nameKo,
                            style: TextStyle(color: suqianData.headerColor),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 旅游景点
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isChinese ? '著名景点' : '유명 관광지',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: suqianData.headerColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...suqianData.attractions.map((attraction) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: attraction.imgColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  attraction.imgIcon,
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isChinese ? attraction.nameZh : attraction.nameKo,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    isChinese ? attraction.descZh : attraction.descKo,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      height: 1.4,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Wrap(
                                    spacing: 6,
                                    children: attraction.tags.map((tag) {
                                      return Text(
                                        tag,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: suqianData.headerColor,
                                          backgroundColor: suqianData.accentColor.withOpacity(0.1),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '特色：${attraction.famous}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),

          // 特色美食
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isChinese ? '特色美食' : '특색 음식',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: suqianData.headerColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...suqianData.foods.map((food) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: food.imgColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  food.imgIcon,
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isChinese ? food.nameZh : food.nameKo,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    isChinese ? food.descZh : food.descKo,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      height: 1.4,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    food.features,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: food.imgColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),

          // 旅游路线
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isChinese ? '推荐路线' : '추천 코스',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: suqianData.headerColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...suqianData.routes.map((route) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  isChinese ? route.nameZh : route.nameKo,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: suqianData.accentColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    route.duration,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: suqianData.headerColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            ...route.stops.map((stop) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 12,
                                      color: suqianData.headerColor,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      stop,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),

          // 底部留白
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}