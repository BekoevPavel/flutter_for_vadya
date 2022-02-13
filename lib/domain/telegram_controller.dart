import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

class TelegramController {
  var telegramApiKey = '5225688941:AAGtII1DgYkO2nNpvGmjCbGysCqBzT0q3T4';
  void test() async {
//---telega
    final telegram = Telegram(telegramApiKey);
    final event = Event((await telegram.getMe()).username!);
    final teledart = TeleDart(telegram, event);

    // start bot
    teledart.start();
    final addDateButton = KeyboardButton(text: 'Добавить дату');

    final addWishYou = KeyboardButton(text: 'Добавить пожелание');

    // arrange buttons boy two in line
    var twoButtonList = [addDateButton];
    // var imageButtonList = [loadImages, deleteImages];

    // grab all buttons together
    var markup = ReplyKeyboardMarkup(
      keyboard: [twoButtonList],
    );
    // when user input command with keyword 'start', execute this block
    teledart.onCommand('start').listen((message) {
      // create buttons

      // send message to user
      teledart.telegram.sendMessage(
        message.chat.id,
        'Пиши епта',
        reply_markup: markup,
      );
    });

    teledart.onMessage().listen((message) {
      print(message.text);

      if (message.text == 'Добавить пожелание') {
        var twoButtonList = [addDateButton];
        markup = ReplyKeyboardMarkup(
          keyboard: [twoButtonList],
        );
        teledart.telegram.sendMessage(
          message.chat.id,
          'Пожелание: ',
          reply_markup: markup,
        );

        // teledart.telegram.editMessageReplyMarkup(reply_markup: markup);
      }

      if (message.text == 'Добавить дату') {
        var twoButtonList = [addWishYou];
        markup = ReplyKeyboardMarkup(
          keyboard: [twoButtonList],
        );
        teledart.telegram.sendMessage(
          message.chat.id,
          'Дата: ',
          reply_markup: markup,
        );
      }
    });
  }
}
