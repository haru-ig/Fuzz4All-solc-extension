pragma solidity ^0.8.0;
struct Point {address x; address y;}
struct Line {address a; address b;}

contract MutatationScriptContract {
  constructor(uint[] _SIZES) {
    for (uint i=0; i<_SIZES.length; i++) {
      mutatedArrayofPoints.push(new Point[](_SIZES[i]));
      mutatedArrayofLines.push(new Line[](_SIZES[i]));
    }
    for (uint i=0; i<mutatedArrayofPoints.length; i++) {
      for (uint j=0; j<mutatedArrayofPoints[i].length; j++) {
        mutatedArrayofPoints[i][j].x = mutatedArrayofPoints[i][j].x;
        mutatedArrayofLines[i][j].a = mutatedArrayofLines[i][j].a;
      }
    }
  }
}

pragma solidity ^0.8.0;

struct Point {address a;address b;}
contract EdgeCaseContract {
  const uint DEFAULT_SIZE = 60;
  uint[] EMPTYARRAY;
  uint DEFAULTINCREMENTSIZE = 10;


  event Inserted(uint idx, address addr);
  event Modified(uint idx, address addr);
  event Deleted(uint idx, address addr);

  Point[] array;

  void InsertElement(address addr) {
    for (uint i=0; i<EMPTYARRAY.length; i++) {
      EMPTYARRAY[i]++;
    }
    array.push(Point(addr, 0x00));
    EmitEvent(DEFAULTINCREMENTSIZE, addr);
  }
  function ModifyElement(uint idx) {
    EmptyArrayCheck(idx, DEFAULTINCREMENTSIZE);
    array[idx].x = 0x20;
    EmitEvent(DEFAULTINCREMENTSIZE, array[idx].x);
  }
  function DeleteElement(uint idx) {
    EmptyArrayCheck(idx, DEFAULTINCREMENTSIZE);
    EMPTYARRAY[idx]--;
    array.pop(idx);
  }
  function EmitEvent(uint increments, address addr) {
    Inserted(idx, addr);
    if (idx == 0)
      Created();
  }
  function EmptyArrayCheck(uint idx, uint increments) {
