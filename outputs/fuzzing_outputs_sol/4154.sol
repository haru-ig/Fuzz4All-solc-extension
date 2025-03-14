pragma solidity ^0.8.0;
contract FallbackCaller {
    modifier receiver(address _receiver) {
        require((msg.value == 0), "FallbackCaller receive");
        require((msg.data.length!= 0), "FallbackCaller no data");
        require(_receiver!= address(0), "FallbackCaller no receiver");
        _;
    }

    fallback () external payable receiver {
    }

    receive () external payable {}
}
