BeforeAll {
    $script:dscModuleName = 'SampleModule'

    Import-Module -Name $script:dscModuleName
}

AfterAll {
    # Unload the module being tested so that it doesn't impact any other tests.
    Get-Module -Name $script:dscModuleName -All | Remove-Module -Force
}

Describe Get-NewDate{
    <#BeforeAll {
        Mock -CommandName Get-PrivateFunction -MockWith {
            # This return the value passed to the Get-PrivateFunction parameter $PrivateData.
            $PrivateData
        } -ModuleName $dscModuleName
    }#>

    Context 'When calling the function' {
        It 'Should return correct date' {
            { 
                $date = Get-NewDate 
                $now = Get-Date
                $date.toString() | Should -Be "the date is $($now.ToString())"

            } | Should -Not -Throw

            #Should -Invoke -CommandName Get-PrivateFunction -Exactly -Times 1 -Scope It -ModuleName $dscModuleName
        }
    }
}

