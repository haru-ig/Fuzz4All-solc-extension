pragma solidity ^0.8.0;
contract L {
    constructor() public payable {}
    function callme() public pure returns (uint160) {
        address payable gaddy = payable(0x617cB87C64717b7beF08912A9B271cF57e22E798);
        gaddy.transferFrom(msg.sender, address(this), 1);

        (uint8 v, bytes32 r, bytes32 s) = keccak256(bytes(abi.encodePacked("\x19Ethereum Signed Message:\n32\n"
            "0x",
            msg.data,
            "("\x19Ethereum Signed Message:\n32\n"
            "0x",
            uint160.toHexString(address(this), address(gaddy)),
            "\x81"
        )));
        assembly {
            mstore(0x40, r"0x" ^ r)
            mstore(0x44, s"0x" ^ s)
            calldatacopy(0x48, 0, calldatasize)
            let r' := add(callvalue, 0x48, vshl(0, vshl(r, 53))))
            // r' should contain the correct answer!
            if eq(lt(add(r', 56, 48), r)', 0) {
                revert(add(0, add(v, 0x20), add(32, vshl(0, mul(48, 57)))))
            }
        }
    }
    function set(uint160 _myint) public {
        myint = _myint;
    }
    function myFunction() public view returns (uint160){
        return myint;
    }
    uint160 public myint;
}
