pragma solidity ^0.8.0;
contract Test1805H {
    uint16[] arr;
    uint8 x = 1;
    constructor() public {





        arr.push(2);

        arr.push(4);
    }
    function setX(uint8 number) public {
        x++;
    }
    function getX() public view returns (uint8) {return x;}
}
contract Test1805I {
    function setarr(uint8 len, uint16[] memory thearray_) public {
       for (uint8 i = 0; i < len ; i++)
       {
           arr[i]=thearray_[i+1];
       }
    }
}
contract Test1805J {
    function setarr(uint8 len, uint16[] memory thearray_) public {
       for (uint8 i = 0; i < len ; i++)
       {
           arr[i]=thearray_[i];
       }
    }
}
