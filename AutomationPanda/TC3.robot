*** Settings ***
Library      SeleniumLibrary
Library    String
Resource     Resource.robot


*** Variables ***
${table_rows}          //table[@name='BookTable']/tbody/tr
${table_column}       //table[@name='BookTable']/tbody/tr[1]/th
${Cell_value}        //table[@name='BookTable']/tbody/tr[5]/td[2]
${Expacted_VAlue}    Mukesh

         


*** Test Cases ***
Verify the Web tables on the web page
      #Static table
      Launch Browser and Navigate to Website
      Execute JavaScript                             window.scrollTo(0, 700)
      #Row count
      ${Row_count}   Get Element Count    ${table_rows}
       Log     Total Rows:${Row_count}
      #Column count
      ${column_count}  Get Element Count    ${table_column}
       Log     Total column:${table_column}
      #Get text from specific cell
      ${cell}=   Get Text      ${Cell_value}
      Log       value:${cell}

      IF    '${Expacted_VAlue} == ${cell}'
        Log    The value is matching
      ELSE
        Log    The value is not matching  
      END
       
    # """
    #   #Loop through all rows
    #   ${Row_count}   Get Element Count    ${table_rows}
    # FOR    ${i}    IN RANGE    1    ${Row_count + 1}
    #     ${book_name}=   Get Text                      //table[@name='BookTable']/tbody/tr[${i}]/td[1]
    #     ${author_name}=   Get Text                   //table[@name='BookTable']/tbody/tr[${i}]/td[2]
    #     ${subject}=   Get Text                      //table[@name='BookTable']/tbody/tr[${i}]/td[3]
    #     ${price}=   Get Text                       //table[@name='BookTable']/tbody/tr[${i}]/td[4]
    #     Log     ${book_name}
    #     Log     ${author_name}
    #     Log     ${subject}
    #     Log     ${price}
    #  END 
    # """"


      


