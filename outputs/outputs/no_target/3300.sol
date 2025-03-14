pragma solidity ^0.8.0;
contract modified3 is Modifier {
    modifier onlyMod() {
        require(msg.sender == address(this), "onlyMod: only sender allowed");
        _;
    }
    function  method(){
        x -= uint256(y);
        if (msg.value > 0){
            y += 3;
        }else{
            emit log2(msg.value);
        }
    }
    function log0(uint256 v)
    public
    {
        require(v == 0, 'log0-fail');
        if (v == bytes(0).length){
            emit log0(msg.value);
        }
    }

    function log1(uint256 v, uint256 w)
    public
    {
        require(v == w, 'log1-fail');
        if (v == bytes(0).length){
            emit log1(msg.value, w);
        }
    }

    function log2(uint256 v, uint256 w)
    public
    {
        require(v == w, 'log2-fail');
        if (bytes(0).length!= v){
            emit log0(v);
        } else if (v == 0){
            emit log1(j, 1);
        }
    }
}
