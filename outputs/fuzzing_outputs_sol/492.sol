pragma solidity ^0.8.0;
contract Grandcaller8 {
        uint256[6] _arr;
        constructor() {
            _arr[0] = 1;
        }
        function mut(uint256 _id)
        public
        {
                _arr[_id] = _arr[_id] * 2;
        }
        function set(uint256 _id) public{
                _arr[_id] = 1;
        }
}
