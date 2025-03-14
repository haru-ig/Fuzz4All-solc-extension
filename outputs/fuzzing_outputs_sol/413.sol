pragma solidity ^0.8.0;
contract SafelyCaller {
    receive () external payable {}
    fallback() external payable {
        require(msg.value == 10 ETH, "invalid amount");
        callContract();
    }

    receive () external payable {}
    fallback() external payable {}
}


pragma solidity ^0.8.0;
contract Caller {
    uint256[] memory array;
    constructor () {}
    function set(uint256 i) external {
        array[0] = 10;
        array[1] = 10;
        array[2] = 10;
        array[2] += 10;
        array[3] += 10;
        array[2] += 10;
        array[3] += 10;
        array[4] += 10;
        array[5] += 10;
        array[6] += 10;
        array[7] += 10;
        array[8] += 10;
        array[9] += 10;
        array[0] += i;
        emit ArraySet(msg.sender, array);
    }
    event ArraySet(address addr, uint256[] arr);
}


pragma solidity ^0.8.0;
contract SimpleCaller {
    address payable to;
    uint256 result;

    function transferAndCall(address c) public payable {
        if (to!= address(0)) {
            c.transfer(msg.value);
        }
        to = c;
    }

    function transferFrom(address c) public payable {
        if (to!= c) {
            c.transferFrom(msg.sender, address(this), msg.value);
        }
        to = c;
    }
}


pragma solidity ^0.8.0;
contract SimpleCaller {
    address payable to;
    uint256 result;

    function () external payable {
        to.transfer(msg.value);
    }

    function transferAndCall(address c) public payable {
        if (to!= address(0)) {
            c.transfer(msg.value);
        }
        to = c;
    }

    function transferFrom(address c) public payable {
        if (to!= c) {
            c.transferFrom(msg.sender, address(this), msg.value);
        }
        to = c;
    }
}
