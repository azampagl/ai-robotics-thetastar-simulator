#include <QCoreApplication>

#include "thetastar/include/map.h"

using namespace ThetaStar;

int main(int argc, char *argv[])
{
   Q_UNUSED(argc);
   Q_UNUSED(argv);

   Map* map = new Map();
   delete map;
}
