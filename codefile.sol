pragma solidity >= 0.5.0 < 0.9.0;

contract CreditLimit{
    // Tirth Meghani 2019110032

    uint creds;

    constructor() creds = 1000;

    function fetchcredlim() public view returns (uint) return creds;

    function expense(uint travel, uint food, uint stay) public {
        require(creds - travel - food - stay >= 0, "This transaction cannot be processed");
        creds = creds - travel - food - stay;
    }

    function resetlim() public creds = 10000;
}
