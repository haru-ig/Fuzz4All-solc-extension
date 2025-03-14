pragma solidity ^0.8.0;
contract FallbackExample {





    function someOtherFunc() public {




        while (true){

            payable(address(this)).transfer(address(this), 1000);
        }
    }

    function fallback(address to, uint value) public {
        (bool success, ) = to.call{value: value}("");
        assert(success);
    }


    function __constructor() public {

        address(0x00).transfer(address(this), 1 ether);
    }
}
