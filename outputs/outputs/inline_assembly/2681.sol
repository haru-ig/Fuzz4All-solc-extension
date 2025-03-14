pragma solidity ^0.8.0;
contract D {
    uint[] public names;
    uint public count = 0;

    constructor() {
        for(uint i = 0; i < 10; i++){
            names.push();
        }
    }
}

pragma solidity ^0.8.0;
contract D {
    uint[] public names;
    uint public count = 0;

    constructor() {
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
        names.push();
    }
}
contract D {
    uint public count = 0;
    constructor() {
        for(uint i = 0; i < 10; i++){
            count += i;
        }
    }
}
contract D {
    uint32 public count;
    uint internal count2;
    int internal count3;
    uint constant internal constant count4  = 4U;

    function createArray(uint arraySizes) private pure returns(uint[] memory){
        uint[] memory result = new uint[](arraySizes);
        for(uint i = 0; i < arraySizes; i++){
            result.push();
        }
        return result;
    }

    constructor() {
        count = 0;
        count2 = 0;
        count3 = -1;
        count4 = 3;
    }
}
