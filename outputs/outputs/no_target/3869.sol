pragma solidity ^0.8.0;
contract S7 {
        uint private x;
        uint private _a;
        uint[] private y;
        mapping(uint => address) public people;
        uint[] public z;
        uint public _b;

    function change(uint x) public view {
        address[] storage addresses = people.values();
        return addresses[1];
    }
    message Inner {
        uint constant s = 3;
    }
    function notEnoughChange(uint x) public {
        x +=1;
    }
    function newCall(uint x) public {
       bytes memory s = new bytes(s);
       uint z = (hash(s) + hash(s)).sub(_b);
       people[z] = msg.sender;
    }
    function newCall2(uint x) public {
        bytes memory s = new bytes(3 + s);
        uint z = hash(concat(s, s)).sub(_b);
        people[z] = msg.sender;
    }
    function newCall3(uint x) public {
        bytes memory s = s.concat(s);
        uint z = hash(concat(s.concat(toEth(0)), s.concat(toEth((4-x).toHexString())))).sub(_b);
        people[z] = msg.sender;
    }
    function newCall4(uint x) public {
        x -=1;
    }

}

pragma solidity ^0.8.0;
contract S8 {
        uint private x;
        uint private _a;
        uint[] private y;
        mapping(uint => uint) public people;
        uint[] public z;
        uint public _b;

    function change(uint x) public view {
        uint z = people[42];
        return z;
    }
    function notEnoughChange(uint x) public {
        x +=1;
    }
    function call(uint x) public view {
        bytes memory s = toHex(0);
       uint z;
       if (x>1) {
        z = hash(concat(s, s, s)).sub(_b);
       } else {
        z = hash(concat(s.concat(s.concat(toEth((2-x).toHexString()))), s.concat(s.concat(toEth("."))))).sub(_b);
       }
       return people[z];
    }

}
