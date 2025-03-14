pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
    struct Person {
    uint Id;
    string Name;
    uint Age;
    uint FavouriteNumbers[10];
}
Person[][] internal _people;
function getPeople() public view returns(Person[][] memory){
    return _people;
}
}
