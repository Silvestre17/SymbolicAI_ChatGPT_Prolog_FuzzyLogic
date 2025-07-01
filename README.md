# 🧠 Symbolic AI for Data Science: Logic, Reasoning, and LLMs 🤖

<p align="center">
    <!-- Project Links -->
    <a href="https://github.com/Silvestre17/SymbolicAI-ChatGPT-Prolog-FuzzyLogic"><img src="https://img.shields.io/badge/Project_Repo-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Repo"></a>
</p>

## 📝 Description

This repository is a collection of projects and exercises from the **Symbolic Artificial Intelligence for Data Science** course. It provides a multifaceted exploration of AI, ranging from the foundational principles of **logic programming** with **Prolog** and **fuzzy logic systems**, to a critical analysis of modern **Large Language Models (LLMs)** like **ChatGPT**. The work demonstrates both the theoretical underpinnings and practical implications of symbolic AI in the current technological landscape.

## ✨ Objective

The core objectives of this work were to:
*   Critically analyze the role and impact of **ChatGPT** in the field of Data Science.
*   Explore emerging AI concepts like **Explainable AI (XAI)** and **Responsible AI**.
*   Implement solutions to logic-based problems using **Prolog**.
*   Model decision-making systems under uncertainty using **Fuzzy Logic**.

## 🎓 Project Context

This work was completed for the **Inteligência Artificial Simbólica para Ciência de Dados** (*Symbolic Artificial Intelligence for Data Science*) course, as part of the 3rd year of the **[Licenciatura em Ciência de Dados](https://www.iscte-iul.pt/degree/code/0322/bachelor-degree-in-data-science)** (*Bachelor Degree in Data Science*) at **ISCTE-IUL**, during the 2023/2024 academic year (1st semester).

## 🛠️ Technologies & Key Concepts

This repository covers a diverse set of symbolic AI paradigms and tools.

<p align="center">
    <a href="https://www.swi-prolog.org/">
        <img src="https://img.shields.io/badge/Prolog-42648A?style=for-the-badge&logo=prolog&logoColor=white" alt="Prolog" />
    </a>
    <a href="https://openai.com/chatgpt">
        <img src="https://img.shields.io/badge/ChatGPT-74AA9C?style=for-the-badge&logo=openai&logoColor=white" alt="ChatGPT" />
    </a>
     <a href="https://www.mathworks.com/help/fuzzy/">
        <img src="https://img.shields.io/badge/Fuzzy_Logic-E44D26?style=for-the-badge&logo=mathworks&logoColor=white" alt="Fuzzy Logic" />
    </a>
</p>

---

## 📚 Project Breakdown

### 1️⃣ [Project: A Critical Analysis of "The Role of ChatGPT in Data Science"](./Relatório_IASCD_Grupo17.pdf)

This group project involved an in-depth analysis of a scientific article on ChatGPT's impact. The work culminated in a detailed report and presentation.

#### Key Areas of Analysis:
*   **ChatGPT's Capabilities:** Explored its applications in automating tasks like data cleaning, generating code, and creating synthetic data.
*   **Core Technology:** Investigated the **Transformer architecture** and the data sources used to train **GPT-3**, including Common Crawl and Wikipedia.
*   **Ethical Implications & Limitations:**
    *   **Copyright & Authorship:** Critically examined the ethical issues surrounding training data, particularly the use of copyrighted material without consent, highlighted by futurist Amy Webb.
    *   **Accuracy & Bias:** Discussed the model's limitations, including factual inaccuracies and the potential for perpetuating biases present in its training data.
*   **The Future of LLMs:** Looked ahead at the evolution of models like **GPT-4** and **GPT-5**, and the competitive landscape with rivals like **Google's Gemini** and **Microsoft's Phi-2**.

<p align="center">
  <img src="https://writerbuddy-wp.s3.amazonaws.com/writer-buddy/20231130064301/50-most-visited-AI-tools-2023-by-writerbuddy.ai-1-975x1024-1.png" alt="ChatGPT Size" width="500">
  <br>
  <em>ChatGPT's size compared to other AI models in 2023</em>
</p>

### 2️⃣ [Practical Exercises: Logic Programming with Prolog](./PrologExercises/)

This section includes solutions to several exercises designed to build proficiency in **Prolog**, a declarative programming language based on formal logic.

#### Key Concepts Implemented:
*   **Facts and Rules:** Representing a knowledge base (e.g., a family tree) using facts (`progenitor(X, Y).`) and rules (`irma(X, Y) :- ...`).
*   **Recursive Rules:** Defining complex relationships like `ancestor` and `descendant` through recursion.
*   **List Manipulation:** Creating predicates like `equal_sets/2` and `merge/3` to handle unordered sets and perform list-based operations common in sorting algorithms.
*   **Problem Solving:** Applying logic to solve problems, such as determining which recipes can be cooked based on available ingredients (`stock_minimo`).

### 3️⃣ [Practical Exercises: Fuzzy Logic Systems](./FuzzyLogicExercises/)

This section contains an exercise on implementing a fuzzy logic system to model a vehicle's speed control system.

#### Key Concepts Implemented:
*   **Fuzzy Sets & Membership Functions:** Defined linguistic variables (e.g., "distance is `short`", "speed is `high`") and their corresponding membership functions.
*   **Fuzzy Rules:** Created a set of IF-THEN rules to govern the system's behavior (e.g., "IF distance is `short` AND speed is `high` THEN recommendation is `reduce`").
*   **Fuzzification, Inference, and Defuzzification:** Modeled the entire process of converting crisp inputs to fuzzy sets, applying rules, and converting the resulting fuzzy output back into a single, crisp value (the final speed recommendation).

## 🚀 How to Run the Solutions

*   **Article Analysis:** The report and presentation are available as PDF files.
*   **Prolog Exercises:** The `.pl` files can be loaded and queried in any standard Prolog interpreter, such as [SWI-Prolog](https://www.swi-prolog.org/).
*   **Fuzzy Logic Exercise:** The solution is documented in the report, detailing the steps of the fuzzy inference process.

## 👥 Team Members

*   **André Silvestre** (Nº104532)
*   **Margarida Pereira** (Nº105877)

## 🇵🇹 Note

This project was developed using Portuguese from Portugal 🇵🇹.