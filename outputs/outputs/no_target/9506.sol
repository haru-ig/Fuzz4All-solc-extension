pragma solidity ^0.8.0;
contract Contract59 is Interface59 {
        function g() external view returns (uint) { return 1; }
    function g() public view returns (uint) { return 1; }
}

pragma solidity ^0.8.0;
contract Contract59 {
        function g() public view returns (uint) { return 1; }
    function g() external view returns (uint) { return 1; }
        contract c {
            function h() public view returns (uint) { return 1; }
        }
}
