namespace java dev.vality.alerting.tg-bot

/** Идентификатор */
typedef string ID

struct Notification {
    /** Уникальный идентификатор уведомления **/
    1: required ID id
    /** Идентификатор получателя **/
    2: required ID receiver_id
     /** Текст уведомления **/
    3: required string message
}

exception ReceiverNotFound {}

/**
* Интерфейс для отправки уведомлений
*/
service NotifierService {

     /** Отправить уведомление **/
    void Notify (1: Notification notification) throws (1: ReceiverNotFound ex);

}