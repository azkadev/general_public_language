

// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:math';

import 'package:general_public_language/dart/uuid/uuid.dart' show generateUuidGeneralDeveloper;

/// Code By GeneralDeveloper
class EventEmitterGeneralDeveloperGeneralDeveloper {
  /// Code By GeneralDeveloper
  final Map<String, Map<String, EventEmitterGeneralDeveloperListenerGeneralDeveloper>> events = {};

  /// Code By GeneralDeveloper
  EventEmitterGeneralDeveloperGeneralDeveloper();

  /// Code By GeneralDeveloper
  void emit({
    required String eventName,
    required dynamic value,
  }) {
    for (final element in events.putIfAbsent(eventName, () {
      return {};
    }).values) {
      if (element.is_pause) {
        continue;
      }
      element.onUpdate(value);
    }
  }

  /// Code By GeneralDeveloper
  EventEmitterGeneralDeveloperListenerGeneralDeveloper on({
    required String eventName,
    required FutureOr<dynamic> Function(dynamic update) onCallback,
  }) {
    final Map<String, EventEmitterGeneralDeveloperListenerGeneralDeveloper> event_datas = events.putIfAbsent(eventName, () {
      return {};
    });

    final EventEmitterGeneralDeveloperListenerGeneralDeveloper eventEmitterListenerGeneralUniverse = EventEmitterGeneralDeveloperListenerGeneralDeveloper();
    eventEmitterListenerGeneralUniverse.ensureInitiaLized(
      eventName: eventName,
      eventUniqueId: generateNewUniqueId(event_datas: event_datas),
      onUpdate: onCallback,
      onCancel: (event) {
        event_datas.remove(event.event_unique_id);
        remove(eventName: eventName, uniqueId: event.event_unique_id);
        if (event.isDisposed) {
          return;
        }
        event.isDisposed = true;
        event.dispose();
      },
    );
    event_datas[eventEmitterListenerGeneralUniverse.event_unique_id] = eventEmitterListenerGeneralUniverse;
    return eventEmitterListenerGeneralUniverse;
  }

  /// Code By GeneralDeveloper
  void remove({
    required String eventName,
    required String uniqueId,
  }) {
    final Map<String, EventEmitterGeneralDeveloperListenerGeneralDeveloper> event_datas = events.putIfAbsent(eventName, () {
      return {};
    });
    event_datas.remove(uniqueId);
  }

  /// Code By GeneralDeveloper

  String generateNewUniqueId({
    required Map<String, EventEmitterGeneralDeveloperListenerGeneralDeveloper> event_datas,
  }) {
    while (true) {
      final String new_unique_id = generateUuidGeneralDeveloper(Random().nextInt(10) + 10, text: "0123456789abcdefghijklmnopqrstuvwxyz-_");
      if (event_datas.containsKey(new_unique_id) == false) {
        return new_unique_id;
      }
    }
  }
}

/// Code By GeneralDeveloper
class EventEmitterGeneralDeveloperListenerGeneralDeveloper {
  /// Code By GeneralDeveloper
  late final String event_name;

  /// Code By GeneralDeveloper
  late final String event_unique_id;

  /// Code By GeneralDeveloper
  late final Function(EventEmitterGeneralDeveloperListenerGeneralDeveloper event) onCancel;

  /// Code By GeneralDeveloper
  late final Function(dynamic data) onUpdate;

  /// Code By GeneralDeveloper
  bool is_initialized = false;

  /// Code By GeneralDeveloper
  bool is_cancel = false;

  /// Code By GeneralDeveloper
  bool is_pause = false;

  /// GeneralUnivetse
  bool isDisposed = false;

  /// Code By GeneralDeveloper
  EventEmitterGeneralDeveloperListenerGeneralDeveloper();

  /// Code By GeneralDeveloper
  void ensureInitiaLized({
    required String eventName,
    required String eventUniqueId,
    required Function(dynamic data) onUpdate,
    required Function(EventEmitterGeneralDeveloperListenerGeneralDeveloper event) onCancel,
  }) {
    if (is_initialized) {
      return;
    }
    event_name = eventName;
    event_unique_id = eventUniqueId;
    this.onUpdate = onUpdate;
    this.onCancel = onCancel;
    is_initialized = true;
  }

  /// Code By GeneralDeveloper
  void resume() {
    is_pause = false;
  }

  /// Code By GeneralDeveloper
  void pause() {
    is_pause = true;
  }

  // @override
  //
  /// Code By GeneralDeveloper
  void dispose() {
    if (isDisposed) {
      return;
    }
    isDisposed = true;
    close();
  }

  /// Code By GeneralDeveloper
  void close() {
    isDisposed = true;
    cancel();
    return;
  }

  /// Code By GeneralDeveloper
  bool cancel() {
    if (is_initialized == false) {
      return false;
    }
    isDisposed = true;
    is_cancel = true;
    is_pause = true;
    onCancel(this);
    return true;
  }

  @override
  String toString() {
    return "$event_name $event_unique_id";
  }
}

