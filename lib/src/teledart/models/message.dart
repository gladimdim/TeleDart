/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2020  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.
import 'dart:async';

import '../../../teledart.dart';
import '../../telegram/model.dart';

class TeleDartMessage extends Message {
  TeleDart _teledart;

  TeleDartMessage(TeleDart teledart, Message message) {
    _teledart = teledart;
    super.message_id = message.message_id;
    super.from = message.from;
    super.date = message.date;
    super.chat = message.chat;
    super.forward_from = message.forward_from;
    super.forward_from_chat = message.forward_from_chat;
    super.forward_from_message_id = message.forward_from_message_id;
    super.forward_signature = message.forward_signature;
    super.forward_sender_name = message.forward_sender_name;
    super.forward_date = message.forward_date;
    super.reply_to_message = message.reply_to_message;
    super.via_bot = message.via_bot;
    super.edit_date = message.edit_date;
    super.media_group_id = message.media_group_id;
    super.author_signature = message.author_signature;
    super.text = message.text;
    super.entities = message.entities;
    super.caption_entities = message.caption_entities;
    super.audio = message.audio;
    super.document = message.document;
    super.animation = message.animation;
    super.game = message.game;
    super.photo = message.photo;
    super.sticker = message.sticker;
    super.video = message.video;
    super.voice = message.voice;
    super.video_note = message.video_note;
    super.caption = message.caption;
    super.contact = message.contact;
    super.location = message.location;
    super.venue = message.venue;
    super.dice = message.dice;
    super.poll = message.poll;
    super.new_chat_members = message.new_chat_members;
    super.left_chat_member = message.left_chat_member;
    super.new_chat_title = message.new_chat_title;
    super.new_chat_photo = message.new_chat_photo;
    super.delete_chat_photo = message.delete_chat_photo;
    super.group_chat_created = message.group_chat_created;
    super.supergroup_chat_created = message.supergroup_chat_created;
    super.channel_chat_created = message.channel_chat_created;
    super.migrate_to_chat_id = message.migrate_to_chat_id;
    super.migrate_from_chat_id = message.migrate_from_chat_id;
    super.pinned_message = message.pinned_message;
    super.invoice = message.invoice;
    super.successful_payment = message.successful_payment;
    super.connected_website = message.connected_website;
    super.passport_data = message.passport_data;
    super.reply_markup = message.reply_markup;
  }

  /// Short-cut to reply with a text message
  Future<Message> reply(String text,
          {bool withQuote = false,
          String parse_mode,
          bool disable_web_page_preview,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyMessage(this, text,
          withQuote: withQuote,
          parse_mode: parse_mode,
          disable_web_page_preview: disable_web_page_preview,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a photo message
  Future<Message> replyPhoto(dynamic photo,
          {bool withQuote = false,
          String caption,
          String parse_mode,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyPhoto(this, photo,
          withQuote: withQuote,
          caption: caption,
          parse_mode: parse_mode,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a audio message
  Future<Message> replyAudio(dynamic audio,
          {bool withQuote = false,
          String caption,
          String parse_mode,
          int duration,
          String performer,
          String title,
          dynamic thumb,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyAudio(this, audio,
          withQuote: withQuote,
          caption: caption,
          parse_mode: parse_mode,
          duration: duration,
          performer: performer,
          title: title,
          thumb: thumb,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a document message
  Future<Message> replyDocument(dynamic document,
          {bool withQuote = false,
          dynamic thumb,
          String caption,
          String parse_mode,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyDocument(this, document,
          withQuote: withQuote,
          thumb: thumb,
          caption: caption,
          parse_mode: parse_mode,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a video message
  Future<Message> replyVideo(dynamic video,
          {bool withQuote = false,
          int duration,
          int width,
          int height,
          dynamic thumb,
          String caption,
          String parse_mode,
          bool supports_streaming,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyVideo(this, video,
          withQuote: withQuote,
          duration: duration,
          width: width,
          height: height,
          thumb: thumb,
          caption: caption,
          parse_mode: parse_mode,
          supports_streaming: supports_streaming,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a animation message
  Future<Message> replyAnimation(dynamic animation,
          {bool withQuote = false,
          int duration,
          int width,
          int height,
          dynamic thumb,
          String caption,
          String parse_mode,
          bool disable_notification,
          int reply_to_message_id,
          ReplyMarkup reply_markup}) =>
      _teledart.replyAnimation(this, animation,
          withQuote: withQuote,
          duration: duration,
          width: width,
          height: height,
          thumb: thumb,
          caption: caption,
          parse_mode: parse_mode,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a voice message
  Future<Message> replyVoice(dynamic voice,
          {bool withQuote = false,
          String caption,
          String parse_mode,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyVoice(this, voice,
          withQuote: withQuote,
          caption: caption,
          parse_mode: parse_mode,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a video note message
  Future<Message> replyVideoNote(dynamic video_note,
          {bool withQuote = false,
          int duration,
          int length,
          dynamic thumb,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyVideoNote(this, video_note,
          withQuote: withQuote,
          duration: duration,
          length: length,
          thumb: thumb,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a media group message
  Future<List<Message>> replyMediaGroup(List<InputMedia> media,
          {bool withQuote = false, bool disable_notification}) =>
      _teledart.replyMediaGroup(this, media,
          withQuote: withQuote, disable_notification: disable_notification);

  /// Short-cut to reply with a location message
  Future<Message> replyLocation(double latitude, double longitude,
          {bool withQuote = false,
          int live_period,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyLocation(this, latitude, longitude,
          withQuote: withQuote,
          live_period: live_period,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a venue message
  Future<Message> replyVenue(
          double latitude, double longitude, String title, String address,
          {bool withQuote = false,
          String foursquare_id,
          String foursquare_type,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyVenue(this, latitude, longitude, title, address,
          withQuote: withQuote,
          foursquare_id: foursquare_id,
          foursquare_type: foursquare_type,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a contact message
  Future<Message> replyContact(String phone_number, String first_name,
          {bool withQuote = false,
          String last_name,
          String vcard,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replyContact(this, phone_number, first_name,
          withQuote: withQuote,
          last_name: last_name,
          vcard: vcard,
          disable_notification: disable_notification,
          reply_markup: reply_markup);

  /// Short-cut to reply with a sticker
  Future<Message> replySticker(dynamic sticker,
          {bool withQuote = false,
          bool disable_notification,
          ReplyMarkup reply_markup}) =>
      _teledart.replySticker(this, sticker,
          withQuote: withQuote,
          disable_notification: disable_notification,
          reply_markup: reply_markup);
}
