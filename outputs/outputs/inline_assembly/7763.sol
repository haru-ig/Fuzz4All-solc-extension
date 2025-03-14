pragma solidity ^0.8.0;
contract L10 {
           uint256 x;
        function add2() public {
           x += x + 2 ether;
           bytes memory memoryValue;
           assembly {


            memoryValue := 3
            x := add(x,load(0x20))
            x := add(x,memoryValue)
            mstore(0x20, x)
    }
    }
}
 contract L10 {
            function add2() public view {
            uint256 x;
            uint256 xTemp = x;
            assembly {
                x := add(x, load(0x20))
                x := add(x,0x80)
            }
            xTemp;
        }
}
