pragma solidity ^0.8.0;
library MyLib {
    uint constant constant1 = 3;
    function myFunction() public view returns(uint constant constant1) {
        return constant2;
    }
}
pragma solidity ^0.8.0;
contract Equivalent_contract28 {
    uint constant constant1 = 2;
    uint constant constant2 = 10000;
    uint constant constant3 = 4000;
    uint x = 0;
    uint y;
}

pragma solidity ^0.8.0;
library MyLib {
    uint constant constant1 = 3;
}
pragma solidity ^0.8.0;
contract Equivalent_contract29 {
    uint constant constant1 = 2;
    uint constant constant2 = 5;
    function MyFunction() public view returns(uint constant constant1) {
        return constant1 + constant2;
    }
}

pragma solidity ^0.8.0;
contract Equivalent_contract30 {
    uint constant constant1 = 1;
    uint constant constant2 = 100;
    for(uint i = 0; i < constant1; i += 1){
        x = constant2;
    }
}
pragma solidity ^0.8.0;
contract Equivalent_contract31 {
    uint constant constant1 = 2;
    uint constant constant2 = 5;
    function MyFunction() public view returns(uint constant constant1) {
        uint i = 0;
        for (i = 0; i < constant1; i += 1) {
            x;
        }
        return constant2;
    }
}
pragma solidity ^0.8.0;
contract Equivalent_contract32 {
    uint constant constant1 = 2;
    uint constant constant2 = 1;
    uint constant constant3 = 1;
}
pragma solidity ^0.8.0;
contract Equivalent_contract33 {
    uint constant constant1 = 1;
    uint constant constant2 = 100;
    uint constant constant3 = 5;
    function MyFunction() public view returns(uint constant constant1) {
        return constant1 - constant3;
    }
}
pragma solidity ^0.8.0;
contract Equivalent_contract34 {
    uint constant constant1 = 2;
    uint constant constant2 = 5;
    function MyFunction() public view returns(uint constant constant1) {
        return (constant2 / constant1) * constant1 + constant2 / constant3 + constant2 / constant3;
    }
