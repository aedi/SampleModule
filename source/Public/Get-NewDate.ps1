function Get-NewDate {
    <#
      .SYNOPSIS
      Sample Function to return input string.

      .DESCRIPTION
      This function is only a sample Advanced function that returns the Data given via parameter Data.

      .EXAMPLE
      Get-Something -Data 'Get me this text'


      .PARAMETER Data
      The Data parameter is the data that will be returned without transformation.

    #>
    [CmdletBinding()]
    [OutputType([string])]
    param()
    $d = Get-Date
    "the date is $($d.toString())"
}