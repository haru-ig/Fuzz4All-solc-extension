pragma solidity ^0.8.0;
uint8 public data;
constructor() {
    data = 0xFF;
}
function set(uint8 _data) public {
    data = _data;
}
function set() public {
    data = 0xFF;
}
function get() public view returns (uint8) {
    return data;
}
function set(uint8 _data) public {
    data = _data;
}
function get() public view returns (uint8) {
    return data;
}
function set(uint8 _data, uint8 _data2) public {
    data = _data;
}
function get() public view returns (uint8) {
    return data;
}


pragma solidity ^0.8.0;
contract MutateSimpleExample {
    uint public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint _data) public {
        data = _data;
    }
    function get() public view returns (uint) {
        return data;
    }
}

contract MutateWithPayableExample {
    uint public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint _data) public payable {
        data = _data;
    }
    function get() public view returns (uint) {
        return data;
    }
}

contract MutateSimpleWithFallbackExample {
    uint public data;
    mapping (address => uint) public balanceOf;
    constructor() {
        data = 0xFF;
    }
    function set(uint _data) public {
        data = _data;
    }
    function get() public view returns (uint) {
        return data;
    }
    function set() public {
        data = 0xFF;
    }
    function get() public view returns (uint) {
        return data;
    }

    function set(uint _data, address _account) public {
        data = _data;
        balanceOf[_account] = data;
    }

    function get() public view returns (uint, address) {
        return (data, address(0));
    }

    function set(uint _data, uint _data2) public {
        data = _data;
        data2 = _data2;
    }

    function get() public view returns (uint, uint) {
        return (data, 0);
    }
}

contract MutateSimpleWithMultiFallbackExample {
    uint public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint _data, uint _data2) public {
        data = _data;
    }
    function get() public view returns (uint) {
        return data;
    }
    function set(uint _data, uint _data2, uint _data3) public {
        data = _data;
        data2 = _data2;
    }
    function get() public
