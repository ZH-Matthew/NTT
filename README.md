<h1> Тестовое задание для компании: </h1>  
<h2> "Национальные туристические технологии"  </h2> 

<h2> API проекта: </h2> 
<b> Получение организации по уникальному ID: </b>  <p> http://localhost:8080//organization/byId/{uuid} <p>
<b> Получение списка организаций по строке или части строки (поиск идет по короткому имени организации): 
</b> http://localhost:8080/organization/filter?column=ogrn&filter=13525 <p>
<b> Получение списка всех доступных организаций: </b> <p> http://localhost:8080//organization/all  <p>

<h2> Для запуска приложения необходимо: </h2> 
- Форкнуть или клонировать проект себе <p>
- Воспользоваться моей базой (все данные доступа есть в проперти файле) <p>
- Либо создать свою и внести данные о базе в проперти файл <p>
- Запустить проект (использована Java 17)  <p>
- Зайти в postman или swagger ( http://localhost:8080/swagger-ui/index.html ) <p>
- UUID для получения организации можно взять либо из запроса ALL , либо из сформированной таблицы <p>

 <h3> При миграции на новую базу все таблицы создаются и автоматически заполняются за счёт Liquibase </h3> 

