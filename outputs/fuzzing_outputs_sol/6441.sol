pragma solidity ^0.8.0;
contract A {
    uint public x;
    uint public y;
    receive() external payable {
        y++;
    }
}
contract B is A {
    uint32 public z;
    receive() external payable {
        z = 5;
    }
}

pragma solidity ^0.8.0;
contract A {
    function transfer() external payable {
    }
}
contract B is A {
    function transfer() external payable {
    }
}
contract C is B {
    uint public w;
    receive() external payable {
        w++;
    }
}
contract D is C {
    uint public x;
    uint public y;
    receive() external payable {

    }
}

pragma solidity >=0.4.21 <0.7.0;
contract Fallback {
    function send(uint p) public {
        require(msg.value == p, 'Wrong amount!');
        D(msg.sender).transfer();
    }
}

pragma solidity >=0.4.21 <0.7.0;
contract Counter {
    uint32 public count;

    function call() public payable returns (uint32 _last) {
        return count;
    }

    fallback();
}
contract PrintLast {
    uint public count = 0;
    function payable() public {
        count = count + 1;
        if (msg.data == "true" && msg.value == 3) {
            Counter("c").call.value(4)();
            count = count + 1;
        }
        if (msg.value == 4) {
            Counter("c2").call();
            count = count + 1;
        }
    }
}

pragma solidity^0.8.0;
contract Counter2 {
    uint public count;
    fallback () external view returns (uint) {
        return count;
    }
}
contract Fallback_simple {
    void external public() payable {
       msg.data = "1";
    }
}
contract Counter2_simple is Counter2 {
    uint public lastCall;
}



contract CounterExample {
    address admin;
    address[] ownerList;

    constructor (address a) public {
        ownerList.push(a);
    }

    function pushOwner(address a)
