pragma solidity ^0.8.0;
contract C___mutated_previously_generated_contractx_mutated_for_upgrade_testing {
    uint internal x;
    constructor() {
        x = 13;
    }

    function call(uint _y) public {
        if(this.owner() > 0) {


        } else {
            x += 10;

        }
    }
    function owner() public view returns (address) {



        if(x > 10) return 0x0;
        return address(this);
    }
}
