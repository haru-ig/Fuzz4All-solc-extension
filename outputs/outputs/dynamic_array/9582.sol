pragma solidity ^0.8.0;
contract Main {
    address payable owner;

    struct Info {
        uint age;
        mapping (address => uint) wages;
    }

    mapping (address => Info) infos;

    constructor() {
    }

    function testSet() public {
        owner.transfer(0);
        uint age = 9500;
        infos[payable(address(this.owner))] = Info(age);
        infos[payable(address(this.owner))] = infos[payable(address(this.owner))].set("wages", payable(this), 1);
        uint result = infos[payable(address(this.owner))].wages[payable(address(this.owner))];
    }

    function modify() public {
        infos[payable(address(this.owner))].age = 20200;
        infos[payable(address(this.owner))] = infos[payable(address(this.owner))].set("wages", payable(this), 1);
    }

    function payoff(uint val) public {
        val = val + 0.001 ether;
        owner.send(val);
    }
}
