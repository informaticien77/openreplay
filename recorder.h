#ifndef RECORDER_H
#define RECORDER_H

#include <QThread>
#include <QMutex>
#include "mainwindow.h"

class Recorder : public QThread
{
    Q_OBJECT

    private:
        QString m_serverid;
        QString m_serveraddress;
        QString m_gameid;
        QString m_encryptionkey;
        QByteArray m_gameinfo;
        QString m_replaydirectory;

    public:
        Recorder(MainWindow *window, QString serverid, QString serveraddress, QString gameid, QString encryptionkey, QByteArray gameinfo, QString replaydirectory);
        QByteArray getFileFromUrl(QString url);
        QJsonDocument getJsonFromUrl(QString url);

    public slots:
        void run();

    signals:
        void toLog(QString logstring);
        void end(QString serverid, QString gameid);
};

#endif // RECORDER_H
