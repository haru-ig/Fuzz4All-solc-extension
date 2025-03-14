pragma solidity ^0.8.0;
contract Caller {
    function success() public {
        caller.sendValue(msg.value);
    }

    function fallback() public {
        callSuccess();
    }

    address public caller;

    function Caller() {
        caller = msg.sender;
    }

    function sendValue(uint256 _value) public {
        require(isContract(address(this)));
        (bool success, ) = caller.call{value: _value}("");
        require(success);
    }

    function isContract(address _addr) private view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(_addr)
        }
        return size > 0;
    }

    function callSuccess() private view {
        BakedBeerExample example = BakedBeerExample(0x44ad028126195a2401a4cc4708516c38989fe90d);
        example.modify(1);
        uint _a = 0;
        while (_a < 10) {
          BakedBeerExample example = BakedBeerExample(0x44ad028126195a2401a4cc4708516c38989fe90d);
          example.modify(_a);
          _a++;
        }
    }
}
