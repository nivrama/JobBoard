<?php

require_once __DIR__.'/../vendor/autoload.php';

/**
 * Setting up this global data for access from the dashboard.  For now, we are
 * storing it in the User's Session. This data reflects several tables that
 * exists within the database. This will prevent us from having to query the DB
 * to access commonly used static data and free up some resources. Ideally, we
 * may want to store this in the in a file on the server and update the data if
 * needed periodically simulating an Application State with PHP.
 */
$_SESSION['metadata'] = [
    1 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Full-Time'
    ],
    2 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Part-Time'
    ],
    3 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Seasonal'
    ],
    4 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Temp'
    ],
    5 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Itern'
    ],
    6 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Volunteer'
    ],
    7 => [
        'metadata_type' => 'experience',
        'metadata_label' => 'Entry'
    ],
    8 => [
        'metadata_type' => 'experience',
        'metadata_label' => 'Junior'
    ],
    9 => [
        'metadata_type' => 'experience',
        'metadata_label' => 'Mid-Senior'
    ],
    10 => [
        'metadata_type' => 'experience',
        'metadata_label' => 'Senior'
    ],
    11 => [
        'metadata_type' => 'comptype',
        'metadata_label' => 'Annum'
    ],
    12 => [
        'metadata_type' => 'comptype',
        'metadata_label' => 'Hour'
    ],
    13 => [
        'metadata_type' => 'jobtype',
        'metadata_label' => 'Contract'
    ]
];

$_SESSION['currency'] = [
    1 => [
        'currency_name' => 'US Dollar',
        'currency_code' => 'USD',
        'currency_symbol' => '$',
        'currency_cent' => '¢'
    ],
    2 => [
        'currency_name' => 'British Pound',
        'currency_code' => 'GBP',
        'currency_symbol' => '£',
        'currency_cent' => 'p'
    ],
    3 => [
        'currency_name' => 'Canadian Dollar',
        'currency_code' => 'CAD',
        'currency_symbol' => '$',
        'currency_cent' => '¢'
    ],
    4 => [
        'currency_name' => 'Euro',
        'currency_code' => 'EUR',
        'currency_symbol' => '€',
        'currency_cent' => 'c'
    ],
    5 => [
        'currency_name' => 'Japanese Yen',
        'currency_code' => 'JPY',
        'currency_symbol' => '¥',
        'currency_cent' => 's'
    ],
];

$_SESSION['country'] = [
    201 => [
        'country_abbr' => 'US',
        'country_name' => 'United States'
    ]
];

$_SESSION['country_code'] = [
    225 => [
        'code' => '+1',
        'country_name' => 'United States'
    ]
];

$_SESSION['industry'] = [
    10 => [
        'industry_name' => 'Transit and Ground Passenger Transportation'
    ]
];
