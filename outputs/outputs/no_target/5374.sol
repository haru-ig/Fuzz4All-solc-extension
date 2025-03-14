pragma solidity ^0.8.0;
contract X {
    function test(int a) public pure {
        int a_new = a + 10;



        if(type(a)!= uint256) {
            if(type(a_new)!= uint256) {

                if(a_new < (int)10) {
                    emit test1(a_new);
                }

                (uint256 flipped_uint, ) = ext_fail(
                    "test",
                    10,
                    3*(a + 10),
                    unchecked(a + 10)
                );

                emit test2(flipped_uint + uint256(a_new));
                assembly {


                    sub(a_new, a, a, 0)
                }
                if (a_new == a) {
                    emit test3(uint256(address(this)));
                }
            }
        }
    }

    function test1 (int _a_new) internal pure returns(uint256 a_new) {
        a_new = _a_new + 5;
        a_new = (uint256(address(this)) << 128);
        a_new = a_new + 10;
    }

    fallback() external {
        emit testfail;
    }

    receive() external {
        emit testfail;
    }

    function ext_fail(
        bytes memory _functionName,
        uint256 value,
        uint256 data,
        uint256 customData
    ) internal returns(uint256 a) {
        (a,, ) = ext(
            _functionName,
            value,
            data,
            customData
        );
    }

    function ext(
        bytes memory _functionName,
        uint256 value,
        uint256 data,
        uint256 customData
    ) public pure {
        require(
            abi.encodeWithSignature(
                _functionName,
                value,
                data,
                customData
            ) >=
            abi.encodeWithSignature(
                _functionName,
                0,
                0,
                customData
            ),
            'fail'
        );
    }

    event test2 (uint e);
    event test3 (address addr);
    event testfail;
}

pragma solidity ^0.8.0;
contract O {
    receive() external { revert(""); }
    fallback() external { revert(""); }
}
/*
