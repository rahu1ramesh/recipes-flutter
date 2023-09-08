import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final List<String> quotes = [
  "Cooking is like love. It should be entered into with abandon or not at all. \n\n\n- Harriet Van Horne",
  "A recipe has no soul. You as the cook must bring soul to the recipe. \n\n\n- Thomas Keller",
  "Cooking is like painting or writing a song. Just as there are only so many notes or colors, there are only so many flavors—it’s how you combine them that sets you apart. \n\n\n- Wolfgang Puck",
  "If you are a chef, no matter how good a chef you are, it’s not good cooking for yourself; the joy is in cooking for others. It’s the same with music. \n\n\n- will.i.am",
  "Cooking with kids is not just about ingredients, recipes, and cooking. It’s about harnessing imagination, empowerment, and creativity. \n\n\n- Guy Fieri",
  "Real cooking is more about following your heart than following recipes. \n\n\n- Unknown",
  "Cooking is at once child’s play and adult joy. And cooking done with care is an act of love. \n\n\n- Craig Claiborne",
  "So when people ask me, ‘What do you think of Michelin?’ I don’t cook for guides. I cook for customers. \n\n\n- Gordon Ramsay",
  "Cooking is not difficult. Everyone has taste, even if they don’t realize it. Even if you’re not a great chef, there’s nothing to stop you understanding the difference between what tastes good and what doesn’t. \n\n\n- Gerard Depardieu",
  "Cooking requires confident guesswork and improvisation—experimentation and substitution, dealing with failure and uncertainty in a creative way. \n\n\n- Paul Theroux",
  "The only real stumbling block is fear of failure. In cooking, you’ve got to have a what-the-hell attitude. \n\n\n- Julia Child",
  "Cooking demands attention, patience, and above all, a respect for the gifts of the earth. It is a form of worship, a way of giving thanks. \n\n\n- Judith B. Jones"
];

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomIndex = random.nextInt(quotes.length);
    final String cookingQuote = quotes[randomIndex];
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 50.0,
          ),
          child: Column(
            children: [
              Text(
                cookingQuote,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  onPressed: () => context.go('/'),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
