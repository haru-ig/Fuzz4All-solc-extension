pragma solidity ^0.8.0;
contract Array_sol {

    uint256 a;
    uint256 count=5;
    function sum() public pure returns (uint256) {
        return(a+count);
    }
    function max() public pure returns(uint256) {
        uint256 value;
        uint256 max=0;
        for(uint256 i=0;i<count;i++)
        {
            value = uint(address(this).balance);
            if(value>max)
            {
                max = value;
            }
        }
        return max;
    }
    function min() public pure returns (uint256) {
        uint256 value;
        uint256 min=0;
        for(uint256 i=0;i<count;i++)
        {
            value = uint(address(this).balance);
            if(value<min)
            {
                min = value;
            }
        }
        return min;
    }
}
