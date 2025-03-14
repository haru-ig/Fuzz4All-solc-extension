pragma solidity ^0.8.0;
contract Test29999 {
    uint[] public data;
    uint[] public data1;
    constructor (uint[] memory _dummy1) public {
        data.push(4);
        data.push(5);
        data1 = _dummy1;
    }

    fallback () external {
        data1.push(6);
        data1[1] = 7;
    }
}

pragma solidity ^0.8.0;
contract Test29999 {
    uint[] public data;
    uint[] public data1;
    constructor (uint[] memory _dummy_1) public {
        data.push(8);
        data.push(9);
        data1 = _dummy_1;
    }
    fallback () public {
        data.push(10);
        data1[1] = 11;
    }
}

pragma solidity ^0.8.0;
contract Test3
{
   uint memory[10] private a;

   function () public pure {
     (uint x, ) = a.push();
   }
}
