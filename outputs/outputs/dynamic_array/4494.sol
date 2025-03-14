pragma solidity ^0.8.0;
contract MutatorNew { constructor () {
} function test() public view returns (uint){
uint _tmp;
_tmp = new mutatorOld().test();
_tmp = new mutatorOld().test2();
return(_tmp); } function test2() public view returns (uint) {
uint _tmp;
_tmp = new mutatorOld().test();
_tmp = new mutatorOld().test2();
return(_tmp); } }
pragma solidity ^0.8.0;
contract MutatorOld2 { constructor () {
} function test() public {
uint _tmp;
_tmp = new mutatorNew().test();
_tmp = new mutatorNew().test2();
} } function test2() public {
uint _tmp;
_tmp = new mutatorNew().test();
_tmp = new mutatorNew().test2();
} }
pragma solidity ^0.8.0;
contract MutatorNew2 { constructor () {
} function test() public pure {
uint _tmp;
_tmp = new mutatorNew().test();
_tmp = new mutatorNew().test2();
} } function test2() public pure {
uint _tmp;
_tmp = new mutatorNew().test();
_tmp = new mutatorNew().test2();
} }
