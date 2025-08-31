class DatatablesController < ApplicationController

PL = 
{
  "infoPostFix":  "",
  "infoThousands":  " ",
  "emptyTable":   "Brak danych",
  # "loadingRecords": "<span class='fa fa-circle-notch fa-spin fa-3x' style='color: lightgrey;'></span>",
  # "processing": "Processing...",
  "processing":   "<span class='fa fa-circle-notch fa-spin fa-3x' style='color: lightgrey;background-color: transparent;'></span>",
  "loadingRecords": "Wczytywanie...",
  "search":       "<span class='fa fa-search'></span>",
  "lengthMenu":   "<span class='fa fa-arrows-alt-v'></span> _MENU_",
  "info": "Pozycje od _START_ do _END_ z _TOTAL_ łącznie",
  "infoEmpty": "Pozycji 0 z 0 dostępnych",
  "infoFiltered": "(filtrowanie spośród _MAX_ dostępnych pozycji)",
  "zeroRecords": "Nie znaleziono pasujących pozycji",
  "paginate": {
      "first": "<<",
      "previous": "<",
      "next": ">",
      "last": ">>"
  },
  "aria": {
      "sortAscending": ": aktywuj, by posortować kolumnę rosnąco",
      "sortDescending": ": aktywuj, by posortować kolumnę malejąco"
  },
  "autoFill": {
      "cancel": "Anuluj",
      "fill": "Wypełnij wszystkie komórki <i>%d<\/i>",
      "fillHorizontal": "Wypełnij komórki w poziomie",
      "fillVertical": "Wypełnij komórki w pionie"
  },
  "buttons": {
      "revertColVisColReorder": "Przywróć domyślne ustawienia kolumn",
      "colvis": "Pokaż/ukryj kolumny",
      "copy": "Kopiuj do schowka",
      "csv": "Kopiuj do CSV",
      "selectAll": "Zaznacz wszystkie wiersze",
      "selectNone": "Odznacz wszystkie wiersze",
      "downloadSelected": "Pobierz zaznaczone jako plik ZIP",
      "deleteSelected": "Usuń zaznaczone wiersze",
      "onlyMyData": "Tylko moje/Wszystkie",
      "onlyChecked": "Tylko przypisane/Wszystkie",
      "onlyNotDeleted": "Ukryj usunięte",
      "exportAllToCsv": "Exportuj wszystko do pliku CSV",
      "export2AllToCsv": "Zestawienie porównawcze (początek miesiąca, miesiąc i kwartał wstecz) - format CSV",
      "fireMachineNameCSV": "Powołaj zaznaczone obiekty (chwilowo export do CSV)",
      "forDnsNameTXT": "Export wpisów DNS - format TXT",
      "forMobaVmFolderTXT": "Export wpisów dla MobaXterm - format TXT",
      "fireCertificateCSV": "Wymień zaznaczone obiekty (chwilowo export do CSV)",
      "fireLbNameEmail": "Wyślij e-mail z informacją o LB",
      "fireVCSync": "Synchronizuj dane z VMware vCenter",
      "selectedFireVCSync": "Synchronizuj zaznaczone pozycje z danymi VMware vCenter",
      "fireF5Sync": "Synchronizuj dane z F5",
      "fireFileSync": "Synchronizuj dane z zawartością plików",
      "fireRedisSync": "Synchronizuj dane w Redis z bazą danych",
      "fireSetAgents": "Nadpisz konfiguracje Agentów DHM na maszynach zgodnie z polityką Klastra",
      "showManagedDevs": "Pokaż z [ACC2, TST, TST2]",
      "showNotManagedDevs": "Pokaż z [ACC, ACC-B, AUTO, INT, NPRD-T, PRD, PRD-T, SZK]",
      "analyzing": "Analizowanie logów",
      "myFilterByColumns": "Filtruj po kolumnach",
      "collection": "Zbiór <span class=\"ui-button-icon-primary ui-icon ui-icon-triangle-1-s\"><\/span>",
      "colvisRestore": "Przywróć widoczność",
      "copyKeys": "Naciśnij Ctrl lub u2318 + C, aby skopiować dane tabeli do schowka systemowego. <br \/> <br \/> Aby anulować, kliknij tę wiadomość lub naciśnij Esc.",
      "copySuccess": {
          "1": "Skopiowano 1 wiersz do schowka",
          "_": "Skopiowano %d wierszy do schowka"
      },
      "copyTitle": "Skopiuj do schowka",
      "excel": "Excel",
      "pageLength": {
          "-1": "Pokaż wszystkie wiersze",
          "_": "Pokaż %d wierszy"
      },
      "pdf": "PDF",
      "print": "Drukuj",
      "createState": "Utwórz stan",
      "removeAllStates": "Usuń wszystkie stany",
      "removeState": "Usuń",
      "renameState": "Zmień nazwę",
      "savedStates": "Zapisane stany",
      "stateRestore": "Stan %d",
      "updateState": "Aktualizuj"
  },
  "searchBuilder": {
      "add": "Dodaj warunek",
      "clearAll": "Wyczyść wszystko",
      "condition": "Warunek",
      "data": "Dane",
      "button": {
          "_": "Aktywne zapytania",
          "0": "Budowanie zapytania"
      },
      "conditions": {
          "array": {
              "contains": "Zawiera",
              "empty": "Pusta",
              "equals": "Równa się",
              "not": "Nie",
              "notEmpty": "Nie pusta",
              "without": "Bez"
          },
          "date": {
              "after": "Po",
              "before": "Przed",
              "between": "Pomiędzy",
              "empty": "Pusto",
              "equals": "Równa",
              "not": "Nie",
              "notBetween": "Nie pomiędzy",
              "notEmpty": "Nie pusta"
          },
          "number": {
              "between": "Pomiędzy",
              "empty": "Pusty",
              "equals": "Równy",
              "gt": "Większy niż",
              "gte": "Równy lub większy niż",
              "lt": "Mniejszy niż",
              "lte": "Równy lub mniejszy niż",
              "not": "Nie",
              "notBetween": "Nie pomiędzy",
              "notEmpty": "Nie pusty"
          },
          "string": {
              "contains": "Zawiera",
              "empty": "Pusty",
              "endsWith": "Kończy się na",
              "equals": "Równa się",
              "not": "Nie",
              "notEmpty": "Nie pusty",
              "startsWith": "Zaczyna się od",
              "notContains": "Nie zawiera",
              "notStartsWith": "Nie zaczyna się od",
              "notEndsWith": "Nie kończy się na"
          }
      },
      "deleteTitle": "Czyszczenie",
      "leftTitle": "Lewy",
      "logicAnd": "AND",
      "logicOr": "OR",
      "rightTitle": "Prawy",
      "title": {
          "_": "Aktywne zapytania",
          "0": "Budowanie zapytania",
          "1": "Budowanie zapytania",
          "%d": "Budowanie zapytania",
          "2": "Budowanie zapytania"
      },
      "value": "Wartość"
  },
  "select": {
      "rows": {
      "_": 'Zaznaczonych %d wierszy',
      "0": "Kliknij w wiersz aby go zaznaczyć",
      "1": "1 wiersz zaznaczony",
      "2": "2 wiersze zaznaczone",
      "3": "3 wiersze zaznaczone",
      "4": "4 wiersze zaznaczone"
      }
  },
  "datetime": {
      "amPm": [
          "am",
          "pm"
      ],
      "hours": "Godzina",
      "minutes": "Minuta",
      "next": "Następne",
      "previous": "Poprzednie",
      "seconds": "Sekunda",
      "unknown": "nieznana",
      "months": {
          "0": "Styczeń",
          "1": "Luty",
          "10": "Listopad",
          "11": "Grudzień",
          "2": "Marzec",
          "3": "Kwiecień",
          "4": "Maj",
          "5": "Czerwiec",
          "6": "Lipiec",
          "7": "Sierpień",
          "8": "Wrzesień",
          "9": "Październik"
      },
      "weekdays": [
          "Nd",
          "Pn",
          "Wt",
          "Śr",
          "Czw",
          "Pt",
          "So"
      ],
      "title": {
          "_": "datetime title _",
          "0": "datetime title 0",
          "1": "datetime title 1",
          "%d": "datetime title %d",
          "2": "datetime title 2"
      }
  },
  "stateRestore": {
      "creationModal": {
          "button": "Utwórz",
          "columns": {
              "search": "Wyszukiwanie kolumny",
              "visible": "Widoczność kolumny"
          },
          "name": "Nazwa:",
          "order": "Sortowanie",
          "paging": "Stronicowanie",
          "scroller": "Przewijanie",
          "search": "Szukanie",
          "searchBuilder": "Tworzenie zapytań",
          "select": "Wybieranie",
          "title": "Utwórz nowy stan",
          "toggleLabel": "Zawiera:"
      },
      "duplicateError": "Stan o tej nazwie już istnieje.",
      "emptyError": "Nazwa nie może być pusta.",
      "emptyStates": "Brak zapisanych stanów",
      "removeConfirm": "Czy na pewno chcesz usunąć %s?",
      "removeError": "Nie udało się usunąć stanu.",
      "removeJoiner": "oraz",
      "removeSubmit": "Usuń",
      "removeTitle": "Usuń stan",
      "renameButton": "Zmień nazwę",
      "renameLabel": "Nowa nazwa dla %s:",
      "renameTitle": "Zmień nazwę stanu"
  },
  "decimal": ",",
  "thousands": " "
}

EN = 
{
    "emptyTable": "No data available in table",
    "info": "Showing _START_ to _END_ of _TOTAL_ entries",
    "infoEmpty": "Showing 0 to 0 of 0 entries",
    "infoFiltered": "(filtered from _MAX_ total entries)",
    "infoThousands": ",",
    "lengthMenu": "Show _MENU_ entries",
  # "loadingRecords": "<span class='fa fa-circle-notch fa-spin fa-3x' style='color: lightgrey;'></span>",
    # "processing": "Processing...",
    "processing":   "<span class='fa fa-circle-notch fa-spin fa-3x' style='color: lightgrey;background-color: transparent;'></span>",
    "loadingRecords": "Loading...",
    "search": "Search:",
    "zeroRecords": "No matching records found",
    "paginate": {
        "first": "First",
        "last": "Last",
        "next": "Next",
        "previous": "Previous"
    },
    "aria": {
        "sortAscending": ": activate to sort column ascending",
        "sortDescending": ": activate to sort column descending"
    },
    "autoFill": {
        "cancel": "Cancel",
        "fill": "Fill all cells with <i>%d</i>",
        "fillHorizontal": "Fill cells horizontally",
        "fillVertical": "Fill cells vertically"
    },
  "buttons": {
        "collection": "Collection <span class='ui-button-icon-primary ui-icon ui-icon-triangle-1-s'/>",
        "colvis": "Column Visibility",
        "colvisRestore": "Restore visibility",
        "copy": "Copy",
        "copyKeys": "Press ctrl or u2318 + C to copy the table data to your system clipboard.<br><br>To cancel, click this message or press escape.",
        "copySuccess": {
            "1": "Copied 1 row to clipboard",
            "_": "Copied %d rows to clipboard"
        },
        "copyTitle": "Copy to Clipboard",
        "csv": "CSV",
        "excel": "Excel",
        "pageLength": {
            "-1": "Show all rows",
            "_": "Show %d rows"
        },
        "pdf": "PDF",
        "print": "Print",
        "updateState": "Update",
        "stateRestore": "State %d",
        "savedStates": "Saved States",
        "renameState": "Rename",
        "removeState": "Remove",
        "removeAllStates": "Remove All States",
        "createState": "Create State"
    },
    "searchBuilder": {
        "add": "Add Condition",
        "button": {
            "0": "Search Builder",
            "_": "Search Builder (%d)"
        },
        "clearAll": "Clear All",
        "condition": "Condition",
        "conditions": {
            "date": {
                "after": "After",
                "before": "Before",
                "between": "Between",
                "empty": "Empty",
                "equals": "Equals",
                "not": "Not",
                "notBetween": "Not Between",
                "notEmpty": "Not Empty"
            },
            "number": {
                "between": "Between",
                "empty": "Empty",
                "equals": "Equals",
                "gt": "Greater Than",
                "gte": "Greater Than Equal To",
                "lt": "Less Than",
                "lte": "Less Than Equal To",
                "not": "Not",
                "notBetween": "Not Between",
                "notEmpty": "Not Empty"
            },
            "string": {
                "contains": "Contains",
                "empty": "Empty",
                "endsWith": "Ends With",
                "equals": "Equals",
                "not": "Not",
                "notEmpty": "Not Empty",
                "startsWith": "Starts With",
                "notContains": "Does Not Contain",
                "notStartsWith": "Does Not Start With",
                "notEndsWith": "Does Not End With"
            },
            "array": {
                "without": "Without",
                "notEmpty": "Not Empty",
                "not": "Not",
                "contains": "Contains",
                "empty": "Empty",
                "equals": "Equals"
            }
        },
        "data": "Data",
        "deleteTitle": "Delete filtering rule",
        "leftTitle": "Outdent Criteria",
        "logicAnd": "And",
        "logicOr": "Or",
        "rightTitle": "Indent Criteria",
        "title": {
            "0": "Search Builder",
            "_": "Search Builder (%d)"
        },
        "value": "Value"
    },
    "searchPanes": {
        "clearMessage": "Clear All",
        "collapse": {
            "0": "SearchPanes",
            "_": "SearchPanes (%d)"
        },
        "count": "{total}",
        "countFiltered": "{shown} ({total})",
        "emptyPanes": "No SearchPanes",
        "loadMessage": "Loading SearchPanes",
        "title": "Filters Active - %d",
        "showMessage": "Show All",
        "collapseMessage": "Collapse All"
    },
    "select": {
        "cells": {
            "1": "1 cell selected",
            "_": "%d cells selected"
        },
        "columns": {
            "1": "1 column selected",
            "_": "%d columns selected"
        },
        "rows": {
            "1": "1 row selected",
            "_": "%d rows selected"
        }
    },
    "datetime": {
        "previous": "Previous",
        "next": "Next",
        "hours": "Hour",
        "minutes": "Minute",
        "seconds": "Second",
        "unknown": "-",
        "amPm": [
            "am",
            "pm"
        ],
        "weekdays": [
            "Sun",
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat"
        ],
        "months": [
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
            "August",
            "September",
            "October",
            "November",
            "December"
        ]
    },
    "editor": {
        "close": "Close",
        "create": {
            "button": "New",
            "title": "Create new entry",
            "submit": "Create"
        },
        "edit": {
            "button": "Edit",
            "title": "Edit Entry",
            "submit": "Update"
        },
        "remove": {
            "button": "Delete",
            "title": "Delete",
            "submit": "Delete",
            "confirm": {
                "1": "Are you sure you wish to delete 1 row?",
                "_": "Are you sure you wish to delete %d rows?"
            }
        },
        "error": {
            "system": "A system error has occurred (<a target=\"\\\" rel=\"nofollow\" href=\"\\\">More information</a>)."
        },
        "multi": {
            "title": "Multiple Values",
            "info": "The selected items contain different values for this input. To edit and set all items for this input to the same value, click or tap here, otherwise they will retain their individual values.",
            "restore": "Undo Changes",
            "noMulti": "This input can be edited individually, but not part of a group. "
        }
    },
    "stateRestore": {
        "renameTitle": "Rename State",
        "renameLabel": "New Name for %s:",
        "renameButton": "Rename",
        "removeTitle": "Remove State",
        "removeSubmit": "Remove",
        "removeJoiner": " and ",
        "removeError": "Failed to remove state.",
        "removeConfirm": "Are you sure you want to remove %s?",
        "emptyStates": "No saved states",
        "emptyError": "Name cannot be empty.",
        "duplicateError": "A state with this name already exists.",
        "creationModal": {
            "toggleLabel": "Includes:",
            "title": "Create New State",
            "select": "Select",
            "searchBuilder": "SearchBuilder",
            "search": "Search",
            "scroller": "Scroll Position",
            "paging": "Paging",
            "order": "Sorting",
            "name": "Name:",
            "columns": {
                "visible": "Column Visibility",
                "search": "Column Search"
            },
            "button": "Create"
        }
    },
  "decimal": ",",
  "thousands": " "
}


  def lang
    respond_to do |format|
      format.json { render json: langue(params[:locale]) }
    end
  end

  private
    def langue (loc)
      case loc
      when "pl"
        PL
      when "en"
        EN
      end
    end

end
