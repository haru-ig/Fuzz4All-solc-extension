pragma solidity ^0.8.0;
contract L20V2 {
        bytes4 public constant ADD_NUMBERS = 0x20ed2b03;
        uint public x;
        modifier isAdd {
                if (msg.data.length > 0) {
                        assembly {
                                let result := calldataload(0, 4)
                                let y :=  add(result, x)
                                let x := and(x, 0xffffffffffffffff)
                                let data(0x00, 0x00, 0x00, 0x00, x, y, 0x04) := msg.data
                                x := add(x, 0x01)
                        }
                }

                _;
        }
        function mul(uint x, uint y) public {
                x *= 0x5555555557;
        }
        function x() public {
                x = add(x, 0x1337);
        }
        function add(uint _x, uint _y) private view returns (uint){
                uint z = sub(_y, x);
                z = sub(_x, z);
                if(z < 0)
                        return 0;

                z = add(x, z);
                return z;
        }
}
