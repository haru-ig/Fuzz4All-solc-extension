pragma solidity ^0.8.0;
contract Array_mutations2{
    function set2(uint256[] memory _a, uint256[] memory _b) public view returns(uint256){
        uint256 z;
        bool c = 3 == 2;

        if(c){
            z = 1;
            for (uint256 i = 0; i < _a.length; i++) {
                _a[i] = 1;
            }
        }else if (9 <= _a.length && _b[0] > _c && _a[_a.length-1] >= 1 ){
            z = 1;
            for (uint256 i = 0; i < _a.length; i++) {
                _a[i] = 1;
            }
        }else if( z <= _a.length && _a[0] == 200*2 && (_a[1] < 10));
        else {
            for (uint256 i = 0; i < _b.length; i++) {
                _a[i] = _b[i];
            }
        }

        return z;
    }
    function set(uint256[] memory _a, uint256[] memory _b) public view returns(uint256){
        uint256 z;
        bool c = 3 == 2;

        if(c){
            z = 1;
            for (uint256 i = 0; i < _a.length; i++) {
                _a[i] = 1;
            }
        }else if (9 <= _a.length && _b[0] > _c && _a[_a.length-1] >= 1 ){
            z = 1;
            for (uint256 i = 0; i < _a.length; i++) {
                _a[i] = 1;
            }
        }else if( z <= _a.length && _a[0] == 200*2 && (_a[1] < 10));
        else {
            for (uint256 i = 0; i < _a.length; i++) {
                _a[i] = 2*i;
            }
        }

        return z;
    }
	function set(uint256[] memory _a, uint256[]
