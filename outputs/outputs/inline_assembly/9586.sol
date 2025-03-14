pragma solidity ^0.8.0;
contract YulContract{
    function addValues6(uint a) pure returns (uint){




        return a + 5;
    }
}


function addToList (uint[] memory list) {
        uint i, lastIndex, output;
        uint minValue;
        for(i = 0; i < list.length; i++) {
            minValue = list[i];
            lastIndex = i;
            for(output = i + 1; output < list.length; i++, output++) {
                if(list[output] < minValue) {minValue = list[output]; lastIndex = output;}
            }
            if(lastIndex == i) {list[lastIndex] = minValue; i = -1; output = -1;}


            if(minValue > 10) {
                    list.push(10);
        }
        }


        if(list[0] > 10 && list[list.length - 1] < 10) {list.push(10);}







        if(output < list.length) {
            list[minValue] = output;
        }

    }


function popLastElementArray (uint[] memory list) {
        uint lastIndex;
        lastIndex = list.length - 1;
        uint minValue = list[0];
        uint poppedValue = list[lastIndex];
        list[0] = poppedValue;
        list[list.length - 1] = 0;

        list.pop();
        minValue = 100 + 10 * lastIndex + minValue;
