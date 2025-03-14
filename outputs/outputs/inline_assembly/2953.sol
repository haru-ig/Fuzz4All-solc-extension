pragma solidity ^0.8.0;
contract C {
    uint public x;
    function setX(uint _x) public{
        x = _x;
        mapping2[x] = _x;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public x;
    contract Child{
        function Child(uint _x) public {
            x = _x;
        }
    }
    Child child;
    function setX(uint _x) public{
        uint _childX;
        assembly {

            _childX := mload(0x200)

            deploy(add(mload(0x200), 0x20), _x)

            child := mload(add(mload(0x200), 0x10))
        }
    }
}
pragma solidity ^0.8.0;
