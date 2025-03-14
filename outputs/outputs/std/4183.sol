pragma solidity ^0.8.0;
contract ArrayMutating {
    uint[] public xArray;
    uint[] public yArray;
    uint total;
    uint xElement;
    uint yElement;
    constructor (uint x, uint y) {
        uint xLength = x;
        uint yLength = y;
        for (uint i = 0; i < xLength; i++) {
            xArray.push(x);
        }
        for (uint i = 0; i < yLength; i++) {
            yArray.push(y);
        }
        uint max = Array(xArray).GetMax(yArray);
        printmax(max);
    }
    function printmax(uint max) internal {
        total = max;
    }
    function MultiplyBy25() internal {
        uint i;
        for (i = 0; i < xArray.length; i++) {

          xArray[i] = xArray[i] + 25;
        }
    }
function printAdd(uint xValue, uint yValue) internal {
        uint i;
        for (i = 0; i < xArray.length; i++) {

        if ((xArray[i] < xValue && yArray[i] < yValue == false) || (yArray[i] < xValue && xArray[i] < yValue == false) || xArray[i] < (xValue+yValue == false) || yArray[i] < (xValue+yValue == false))
            {
              continue;
            }
          if ((xArray[i] + yArray[i] == xValue) && (xArray[i] == xValue) && (yArray[i] == xValue)){
            continue;}
          else {
            printAddmessage();
            printAdd(xArray[i], yArray[i]);
          }
        }
    }
        function printAddmessage() internal {
            if (xArray[i] == xValue && xArray[i] < total)
            {
                  bytes memory message = hex"05";
                  assembly {
                      mstore(0x40, add(message, 0x20))
                  }
                }
            else {
                printAddmessage();
            }
        }
}
