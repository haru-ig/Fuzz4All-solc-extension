pragma solidity ^0.8.0;
contract EtherFallback {
    receive () external payable {}

    uint8 _i;
    function () external payable {}
    fallback () internal {
        unchecked {


            _i += 1;
        }
    }
}
pragma solidity ^0.8.0;
contract EtherFallback {
    receive () external payable {}
    uint8 _i;
    function () external payable {}
    fallback () public payable {
        unchecked {


            _i += 1;
        }
    }
}
