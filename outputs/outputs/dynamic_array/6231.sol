pragma solidity ^0.8.0;
interface I
{
mapping (uint256 => bytes) data;
}
contract C  is I {
mapping (uint256 => bytes1) data;
}
pragma solidity ^0.8.0;
interface I
{
mapping (uint256 => bytes) data;

}
contract C  is I {
mapping (uint256 => bytes1) data;

}
contract A
{
struct S {
uint256 x;
}
S[] data;
}
pragma solidity ^0.8.0;
contract A
{
struct S {
uint256 x;
}
S[] storedData;
S[] data;
}
