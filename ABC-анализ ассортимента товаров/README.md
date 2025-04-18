# 📦 ABC-анализ ассортимента товаров

## 📌 Цель проекта
Провести **ABC-анализ** ассортимента для выявления наиболее значимых товаров по ключевым метрикам:  
- Количество продаж  
- Выручка  
- Прибыль  

Результаты анализа помогают:
- Оптимизировать ассортимент
- Повысить эффективность управления запасами
- Сконцентрироваться на стратегически важных позициях

---

## 📊 Описание данных
В рамках проекта использовались данные о продажах, включающие:
- Название товара  
- Группа товаров  
- Количество проданных единиц  
- Выручка  
- Прибыль  

---

## 🧠 Методология
Анализ выполнен по трём ключевым метрикам:
1. Количество проданных единиц  
2. Выручка  
3. Прибыль  

Для каждой метрики рассчитаны:
- Доля товара в общем объёме  
- Накопительный процент  
- Категория по принципу **ABC**:
  - `A` — самые важные товары  
  - `B` — товары средней значимости  
  - `C` — наименее значимые товары  

Создана **сводная ABC-классификация**, объединяющая все три метрики (например, `AAA`, `AAB`, `BCC`) для более глубокой оценки приоритетности.

---

## 📈 Результаты анализа
- **Категория A** — товары, приносящие основную долю продаж и прибыли  
- **Категория B** — товары со средней значимостью  
- **Категория C** — товары с минимальным вкладом, возможны к исключению  

---

## ✅ Выводы и Рекомендации
1. Исключить или сократить долю товаров из категории **C**  
2. Сфокусировать маркетинг и управление запасами на товарах категории **A**  
3. Для товаров категории **B** — рассмотреть возможности роста или повышения маржинальности  

---

## ⚙️ Техническая реализация
Проект выполнен в **Microsoft Excel** с использованием:
- Формул: `СУММ()`, `ЕСЛИ()`, `ПРОСМОТР()` и других  
- Сортировки и вычислений долей  
- Условного форматирования  
- Визуализации результатов (цветовая раскладка, таблицы, графики)

