pragma solidity ^0.8.0;
contract Incrementer {


    function Incrementer() {


    }


    function increment() public view returns(uint) {
        if((address(this).increment_internal())) {
            return 0;
        }



    }
}
contract MemoryAttacker {
    function exploit_internal() public {
        address payable payable_to = address(104547 * 0x80000000000000);
        payable_to.transfer 4 ether;
    }
}

pragma solidity ^0.8.0;
contract MemoryAttacker {
    function exploit_internal() public {
        address payable payable_to = address(0x90E616284276c387299D09e1628D8f66425F9358);
        payable_to.transfer 4 ether;
    }
}

pragma solidity ^0.8.0;
contract MemoryAttacker {
    function exploit() public {



        address payable payable_to = address(this);
        payable_to.transfer 4 ether;
    }
}
