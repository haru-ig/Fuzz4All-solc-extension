pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    function setZ(uint256) public {
        assembly {


            let slot := 0xf4




            sstore(slot, mul(0xffff, 0xffff))

            switch slot
            {
                case 0xf4: {

                    sstore(slot, add(slot, 32))
                    calldatacopy(slot, slot, 32)

                    require(returndatasize() == 64, "error: return data not 64 bytes");

                    fallback()
                }
            }
        }
    }
}

pragma solidity ^0.8.0;
contract ReentrancyFallback {
    mapping(uint => uint) x;

    function increment() public {
        require (x[msg.sender] == 0, "error: already incremented");
        uint val = uint(keccak256(abi.encode(msg.sender, msg.data)));
        require (val == uint(keccak256(abi.encode(msg.sender, fallback(0))))), "error: fallback function was not called");
        x[msg.sender] += 1;
    }
    function fallback(uint) public pure {
        revert();
    }
    function revert() public pure {
        revert();
    }
}

pragma solidity ^0.8.0;
contract UpgradeableFallback {
    bool isFallback = false;

    function setFallback(address x) public {
        require(isFallback == false, "error: cannot change fallback address");
        fallback(x);
    }
    function updateFallback() public {
        require(isFallback == false, "error: cannot update fallback");
        bool isFallback_;
        assembly {
            isFallback_ := mload(0)
        }
        isFallback = isFallback_;
    }
    function fallback(address) public pure {}
}
