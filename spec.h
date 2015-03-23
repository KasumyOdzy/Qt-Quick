#ifndef SPEC_H
#define SPEC_H

#include <QObject>

class spec : public QObject
{
    Q_OBJECT
public:
    explicit spec(QObject *parent = 0);
    ~spec();

signals:

public slots:
};

#endif // SPEC_H
