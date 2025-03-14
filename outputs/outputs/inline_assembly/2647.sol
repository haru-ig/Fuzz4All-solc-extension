pragma solidity ^0.8.0;
contract E {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    uint public value;
    constructor() public {
        x = z * x + ky;
        w = x * w / 10;
    }
    function set_value(uint value_) public {
       value = value_;
    }
    function get_value() public view returns(uint) {
        return value;
    }
}

pragma solidity ^0.8.0;
contract I {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;

    constructor() public {
        x = z * x + ky;
        w = x * w / 10;
    }
    function increment_x(uint value_) public {
        x += value_;
    }
    function get_x() public view returns(uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    constructor() public {
        x = z * x + ky;
        w = x * w / 10;
    }

    function increment_x(uint value) public {
        x += value;
    }

    function get_x() public view returns(uint) {
        return x;
    }
}
pragma solidity ^0.8.0;
contract E {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    uint public value;
    constructor() public {
        x = z * x + ky;
        w = x * w / 10;
    }

    function set_value(uint value_) public {
        value = value_;
    }

    function get_value() public view returns(uint) {
        return value;
    }

    function increment_x(uint value_) public {
        x += value_;
    }

    function get_x() public view returns(uint) {
        return x;
    }
}
