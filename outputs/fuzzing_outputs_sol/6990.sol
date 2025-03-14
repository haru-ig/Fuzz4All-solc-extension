pragma solidity ^0.8.0;
contract Modification_1_4 {
    address payable fallback_;
    function set_fallback(address payable _fallback_) public {
        fallback_ = _fallback_;
    }
    function fallback() public payable {
        fallback_.transfer(address(this).balance);
    }
}
contract Modification_2_7_0 {
    address payable fallback_;
    function set_fallback(address payable _fallback_) public {
        fallback_ = _fallback_;
    }
    function fallback() public payable {
        fallback_.transfer(address(this).balance);
    }
}
contract Modification_3_7_2 {
    address payable fallback_;
    function set_fallback(address payable _fallback_) public {
        fallback_ = _fallback_;
    }
    function fallback() public payable {
        fallback_.transfer(address(this).balance);
    }
}
            contract Modification_4_7_2_6 {
        address payable fallback_;
        function set_fallback(address payable _fallback_) public {
            fallback_ = _fallback_;
        }
        function fallback() public payable {
            fallback_.transfer(address(this).balance);
        }
    }
