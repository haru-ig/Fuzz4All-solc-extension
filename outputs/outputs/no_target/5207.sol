pragma solidity ^0.8.0;
contract SimpleExample15 {
    address payable addr;
    uint val;
    function doSomething(bytes memory _data) public {
        if (msg.value<500) {
        }else {
            return;
        }
        val = uint(msg.value);
        (bool success2, ) = payable(addr).call{value:msg.value}(abi.encodeWithSignature('get(uint)'));
        if (success2) {
            val = uint(msg.value) + 2;
        }
    }
    function get(uint _val) public pure {
        emit Emit(val);
        if (true) {
            return;
        }
        unchecked {
            if (false) assert(false);
        }
    }
}
contract SimpleExample16 {
    function doSomething(address payable a, uint _val) public {
        a.send(uint(1000));
        uint x=uint(100);
        while(true) assert(0);
    }
}

pragma solidity ^0.8.0;
contract SimpleExample17 {
    uint x;
    uint z;
    function doSomething(bytes memory _data) public {
        if (x == 0) {
            x = z;
        }else {
            x = z+2;
        }
        (bool success2, ) = payable(msg.sender).call{value:500}(abi.encodeWithSignature('get(uint)'));
        if (success2) {
            x = uint(msg.value)+2;
        }
    }
    function get(uint _val) public pure {
        emit Emit(z);
        x = _val;
        if (x < 0) {
            assert(false);
            return;
        }
        unchecked {
            if (true) return;
        }
    }
    function set(uint _val) public {
        z = _val;
        if (uint(msg.value)+1 > 0) {
            x = z+1;
        }
    }
    function getSet() public {
        (bool success2, ) = payable(msg.sender).call{value:500}(abi.encodeWithSignature('get(uint)'));
        x = _val();
        uint p = 0;
        (bool success2, ) = payable(msg.sender).call{value:500}(abi.encodeWithSignature('get(uint)'));
        x = _val() + 1;
    }
    function getSet2(uint p) public {
            z = uint(msg.value) + 2;
            x = uint
