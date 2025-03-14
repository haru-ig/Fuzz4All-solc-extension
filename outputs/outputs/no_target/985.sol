pragma solidity ^0.8.0;
contract SemanticMutation14 {
    function update()
        public
        pure
        returns (uint)
    {
        return (uint(uint16((9223372036854775806))) - uint(uint16((8446744073709551612))) * (uint8((10))));
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function update()
        public
        pure
        returns (uint)
    {
        return uint(uint16((10)));
    }
}
contract SemanticMutation16 {
    function update()
        public
        pure
        returns (uint)
    {
        return uint(uint16((10))));
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation17 {
    function update()
        public
        pure
        returns (uint)
    {
        return ((uint16((10))));
    }
}

contract SemanticMutation18 {
    function update()
        public
        pure
        returns (uint)
    {
        return ((uint16(uint16((10)))));
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation19 {
    constructor() public {
    }

    function update()
        public
        pure
        returns (uint)
    {

        return +(0 + 0);
    }
}










contract SemanticMutation21 {
    bytes2[] public bar;

    uint private x;
    constructor (uint _x) public {
        x = _x;
    }
    function update(uint _x) public {
        bar.push(_x);
    }
}
