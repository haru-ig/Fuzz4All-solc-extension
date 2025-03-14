pragma solidity ^0.8.0;
contract MutatedCaller {
    uint8 private constant defaultDecimals = 18;
    uint8 public constant tokenDecimals = 12;

    function callFromMutatedCaller(address _to, uint256 _value) public {
        require(
            _to.call{value:_value}("")
        );
    }

    function callFromMutatedCallerWithLowDecimals(address _to, uint256 _value) public {
        uint256 totalValue = _value.mul(9 ** uint256(tokenDecimals));
        require(
            _to.call({value:totalValue * 10**uint256(tokenDecimals)})("")
        );
    }

    function callToMutatedCaller(address _to, uint256 _value) public {
        require(
            address(uint128(1) << uint256(uint80(_value)))) ==
                address(0xFFA0B207B6E0E12FCD9974CFA5FCEE4B7CA3D2C2)
            );
        {
            assembly {
                msg.return(0)
            }
        }
    }

    function callToMutatedCallerWithLowDecimals(address _to, uint256 _value) public {
        uint256 totalValue = _value.mul(9 ** uint256(tokenDecimals));
        require(
            address(uint128(1) << uint256(uint80(totalValue * 10**uint256(tokenDecimals))))) ==
                address(0xFFA0B207B6E0E12FCD9974CFA5FCEE4B7CA3D2C2)
            );
        {
            assembly {
                msg.return(0)
            }
        }
    }
}
